import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

import 'package:spotify_client/utils/constants/strings.dart';

import 'package:spotify_client/src/feature/authentication/data/provider/local/session_storage.dart';
import 'package:spotify_client/src/feature/authentication/data/provider/remove/authentication_network_data_provider.dart';
import 'package:spotify_client/src/feature/authentication/data/repository/authentication_repository.dart';

import 'package:spotify_client/domain/api_client/api_auth_exception.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  const AuthenticationRepositoryImpl({
    required final SessionStorage sessionStorage,
    required final AuthenticationNetworkDataProvider
        authenticationNetworkDataProvider,
  })  : _sessionStorage = sessionStorage,
        _authenticationNetworkDataProvider = authenticationNetworkDataProvider;

  final SessionStorage _sessionStorage;
  final AuthenticationNetworkDataProvider _authenticationNetworkDataProvider;

  @override
  String? fetchAccessToken() => _sessionStorage.getAccessToken();

  @override
  Future<void> logout() async {
    await _sessionStorage.deleteAccessToken();
    await _sessionStorage.deleteCodeVerifier();
    await _sessionStorage.deleteRefreshToken();
  }

  @override
  Future<void> makeRequestBrowser() async {
    final String codeVerifier = await _generateCodeVerifier();
    final String codeChallenge = _generateCodeChallenge(codeVerifier);
    final String state = await _generateState();
    await _authenticationNetworkDataProvider.requestUserAuthorization(
      queryParameters: <String, dynamic>{
        'client_id': clientID,
        'response_type': 'code',
        'redirect_uri': redirectUri,
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
    final codeVerifier = _sessionStorage.getCodeVerifier() ?? '';
    final base64codec = _generateBase64Codec();
    final jsonResponse =
        await _authenticationNetworkDataProvider.requestAccessToken(
      base64codec: base64codec,
      queryParameters: <String, dynamic>{
        'grant_type': 'authorization_code',
        'code': code,
        'redirect_uri': redirectUri,
        'code_verifier': codeVerifier,
        'client_id': clientID,
      },
    );
    await _sessionStorage
        .setAccessToken(jsonResponse['access_token'] as String);
    await _sessionStorage
        .setRefreshToken(jsonResponse['refresh_token'] as String);
  }

  Future<String> _getAuthCode(Map<String, String> queryParameters) async {
    final state = _sessionStorage.getState();
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
    final refreshToken = _sessionStorage.getRefreshToken();
    final base64codec = _generateBase64Codec();
    final jsonResponse =
        await _authenticationNetworkDataProvider.requestRefreshedAccessToken(
      base64codec: base64codec,
      queryParameters: <String, dynamic>{
        'grant_type': 'refresh_token',
        'refresh_token': refreshToken,
        'client_id': clientID
      },
    );
    _sessionStorage.setAccessToken(jsonResponse['access_token'] as String);
    _sessionStorage.setRefreshToken(jsonResponse['refresh_token'] as String);
    _sessionStorage.setAccessToken(jsonResponse['access_token'] as String);
  }

  String _generateBase64Codec() {
    return base64.encode(utf8.encode('$clientID:$clientSecret'));
  }

  Future<String> _generateCodeVerifier() async {
    const String characters =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890_.-~';
    final Random random = Random();
    final codeVerifier = String.fromCharCodes(Iterable.generate(
        random.nextInt(85) + 43,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
    _sessionStorage.setCodeVerifier(codeVerifier);
    return codeVerifier;
  }

  Future<String> _generateState() async {
    const String characters =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890_.-~';
    final Random random = Random();
    final state = String.fromCharCodes(Iterable.generate(
        random.nextInt(85) + 43,
        (_) => characters.codeUnitAt(random.nextInt(characters.length))));
    _sessionStorage.setState(state);
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
