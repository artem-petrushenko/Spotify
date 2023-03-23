import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

import 'package:spotify_client/configuration/configuration.dart';
import 'package:spotify_client/domain/api_client/api_auth_exception.dart';

import 'package:spotify_client/domain/api_client/auth_api_client.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

class AuthService {
  final _sessionDataProvider = SessionDataProvider();
  final _authApiClient = AuthApiClient();

  Future<void> logout() async {
    await _sessionDataProvider.deleteAccessToken();
    await _sessionDataProvider.deleteCodeVerifier();
    await _sessionDataProvider.deleteRefreshToken();
  }

  Future<bool> isAuth() async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final isAuth = accessToken != null;
    return isAuth;
  }

  Future<void> makeRequestBrowser() async {
    final String codeVerifier = await _generateCodeVerifier();
    final String codeChallenge = _generateCodeChallenge(codeVerifier);
    final String state = await _generateState();
    _authApiClient.requestUserAuthorization(
      queryParameters: <String, dynamic>{
        'client_id': Configuration.clientID,
        'response_type': 'code',
        'redirect_uri': Configuration.redirectUri,
        'state': state,
        'scope':
            'ugc-image-upload user-read-playback-state app-remote-control user-modify-playback-state playlist-read-private user-follow-modify playlist-read-collaborative user-follow-read user-read-currently-playing user-read-playback-position user-library-modify playlist-modify-private playlist-modify-public user-read-email user-top-read user-read-recently-played streaming user-read-private user-library-read',
        'show_dialog': false,
        'code_challenge_method': 'S256',
        'code_challenge': codeChallenge
      },
    );
  }

  Future<void> handleDeeplink(Map<String, String> queryParameters) async {
    final code = await _getAuthCode(queryParameters);
    final codeVerifier = await _sessionDataProvider.getCodeVerifier() ?? '';
    final base64codec = _generateBase64Codec();
    final jsonResponse = await _authApiClient.requestAccessToken(
      base64codec: base64codec,
      queryParameters: <String, dynamic>{
        'grant_type': 'authorization_code',
        'code': code,
        'redirect_uri': Configuration.redirectUri,
        'code_verifier': codeVerifier,
        'client_id': Configuration.clientID,
      },
    );
    await _sessionDataProvider
        .setAccessToken(jsonResponse['access_token'] as String);
    await _sessionDataProvider
        .setRefreshToken(jsonResponse['refresh_token'] as String);
  }

  Future<String> _getAuthCode(Map<String, String> queryParameters) async {
    final state = await _sessionDataProvider.getState();
    if (queryParameters.containsKey('error')) {
      throw const ApiAuthException(ApiAuthExceptionType.accessDenied);
    }
    if (queryParameters['state'] != state) {
      throw const ApiAuthException(ApiAuthExceptionType.incorrectState);
    }
    return queryParameters['code'] ?? '';
  }

  Future<void> requestRefreshedAccessToken() async {
    final refreshToken = await _sessionDataProvider.getRefreshToken();
    final base64codec = _generateBase64Codec();
    final jsonResponse = await _authApiClient.requestRefreshedAccessToken(
      base64codec: base64codec,
      queryParameters: <String, dynamic>{
        'grant_type': 'refresh_token',
        'refresh_token': refreshToken,
        'client_id': Configuration.clientID
      },
    );

    await _sessionDataProvider
        .setRefreshToken(jsonResponse['refresh_token'] as String);
    await _sessionDataProvider
        .setAccessToken(jsonResponse['access_token'] as String);
  }

  String _generateBase64Codec() {
    return base64.encode(
        utf8.encode('${Configuration.clientID}:${Configuration.clientSecret}'));
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

  Future<String> _generateState() async {
    const String characters =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890_.-~';
    final Random random = Random();
    final state = String.fromCharCodes(Iterable.generate(
        random.nextInt(85) + 43,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
    _sessionDataProvider.setState(state);
    return state;
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
