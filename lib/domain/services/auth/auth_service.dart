import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/services/auth/abstract_auth_service.dart';

import 'package:spotify_client/configuration/configuration.dart';

import 'package:spotify_client/domain/api_client/api_auth_exception.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/repository/auth/abstract_auth_repository.dart';

class AuthService implements AbstractAuthService {
  @override
  Future<void> logout() async {
    await GetIt.instance<SessionDataProvider>().deleteAccessToken();
    await GetIt.instance<SessionDataProvider>().deleteCodeVerifier();
    await GetIt.instance<SessionDataProvider>().deleteRefreshToken();
  }

  @override
  Future<bool> isAuth() async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final isAuth = accessToken != null;
    return isAuth;
  }

  @override
  Future<void> makeRequestBrowser() async {
    final String codeVerifier = await _generateCodeVerifier();
    final String codeChallenge = _generateCodeChallenge(codeVerifier);
    final String state = await _generateState();
    GetIt.instance<AbstractAuthRepository>().requestUserAuthorization(
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

  @override
  Future<void> handleDeeplink(Map<String, String> queryParameters) async {
    final code = await _getAuthCode(queryParameters);
    final codeVerifier =
        await GetIt.instance<SessionDataProvider>().getCodeVerifier() ?? '';
    final base64codec = _generateBase64Codec();
    final jsonResponse =
        await GetIt.instance<AbstractAuthRepository>().requestAccessToken(
      base64codec: base64codec,
      queryParameters: <String, dynamic>{
        'grant_type': 'authorization_code',
        'code': code,
        'redirect_uri': Configuration.redirectUri,
        'code_verifier': codeVerifier,
        'client_id': Configuration.clientID,
      },
    );
    await GetIt.instance<SessionDataProvider>()
        .setAccessToken(jsonResponse['access_token'] as String);
    await GetIt.instance<SessionDataProvider>()
        .setRefreshToken(jsonResponse['refresh_token'] as String);
  }

  Future<String> _getAuthCode(Map<String, String> queryParameters) async {
    final state = await GetIt.instance<SessionDataProvider>().getState();
    if (queryParameters.containsKey('error')) {
      throw const ApiAuthException(ApiAuthExceptionType.accessDenied);
    }
    if (queryParameters['state'] != state) {
      throw const ApiAuthException(ApiAuthExceptionType.incorrectState);
    }
    return queryParameters['code'] ?? '';
  }

  @override
  Future<void> requestRefreshedAccessToken() async {
    final refreshToken =
        await GetIt.instance<SessionDataProvider>().getRefreshToken();
    final base64codec = _generateBase64Codec();
    final jsonResponse = await GetIt.instance<AbstractAuthRepository>()
        .requestRefreshedAccessToken(
      base64codec: base64codec,
      queryParameters: <String, dynamic>{
        'grant_type': 'refresh_token',
        'refresh_token': refreshToken,
        'client_id': Configuration.clientID
      },
    );

    await GetIt.instance<SessionDataProvider>()
        .setRefreshToken(jsonResponse['refresh_token'] as String);
    await GetIt.instance<SessionDataProvider>()
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
    GetIt.instance<SessionDataProvider>().setCodeVerifier(codeVerifier);
    return codeVerifier;
  }

  Future<String> _generateState() async {
    const String characters =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890_.-~';
    final Random random = Random();
    final state = String.fromCharCodes(Iterable.generate(
        random.nextInt(85) + 43,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
    GetIt.instance<SessionDataProvider>().setState(state);
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
