import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

import 'package:spotify_client/configuration/configuration.dart';

import 'package:spotify_client/domain/api_client/auth_api_client.dart';
import 'package:spotify_client/domain/api_client/api_client_exception.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

class AuthService {
  final _sessionDataProvider = SessionDataProvider();
  final _authApiClient = AuthApiClient();

  Future<void> logout() async {
    await _sessionDataProvider.deleteAccessToken();
    await _sessionDataProvider.deleteCodeVerifier();
  }

  Future<bool> isAuth() async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final isAuth = accessToken != null;
    return isAuth;
  }

  Future<void> makeRequestBrowser() async {
    final String codeVerifier = await _generateCodeVerifier();
    final String codeChallenge = _generateCodeChallenge(codeVerifier);
    _authApiClient.requestUserAuthorization(codeChallenge: codeChallenge);
  }

  Future<void> getData(Map<String, String> queryParameters) async {
    if (queryParameters.containsKey('error')) {
      throw {const ApiClientException(ApiClientExceptionType.accessDenied)};
    }
    // if (queryParameters['state'] != state) {
    //   throw TwitterOAuthException('Did not match the expected state value.');
    // }
    else {
      final code = queryParameters['code'] ?? '';
      final codeVerifier = await _sessionDataProvider.getCodeVerifier() ?? '';
      final base64codec = base64.encode(utf8
          .encode('${Configuration.clientID}:${Configuration.clientSecret}'));
      final response = await _authApiClient.requestAccessToken(
        code: code,
        codeVerifier: codeVerifier,
        base64codec: base64codec,
      );
      print(response.body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse =
            jsonDecode(response.body) as Map<String, dynamic>;
        final accessToken = jsonResponse['access_token'] as String;
        await _sessionDataProvider.setAccessToken(accessToken);
      }
    }
  }

  Future<String> _generateCodeVerifier() async {
    const String characters =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890_.-~';
    final Random random = Random();
    final codeVerifier = String.fromCharCodes(Iterable.generate(
        random.nextInt(85) + 43,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
    _sessionDataProvider.setCodeVerifier(codeVerifier);
    return codeVerifier;
  }

  String _generateCodeChallenge(String codeVerifier) {
    // ${base64.encode(utf8.encode(codeVerifier))}
    final digest = sha256.convert(utf8.encode(codeVerifier));
    final codeChallenge = base64UrlEncode(digest.bytes);

    if (codeChallenge.endsWith('=')) {
      return codeChallenge.substring(0, codeChallenge.length - 1);
    }
    return codeChallenge;
  }
}
