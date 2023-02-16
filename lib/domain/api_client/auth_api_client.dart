import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:spotify_client/domain/api_client/api_auth_exception.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:spotify_client/configuration/configuration.dart';


class AuthApiClient {
  Future<Map<String, dynamic>> requestAccessToken({
    required String code,
    required String codeVerifier,
    required String base64codec,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(
          '${Configuration.accountHost}/api/token'
          '?grant_type=authorization_code'
          '&code=$code'
          '&redirect_uri=${Configuration.redirectUri}'
          '&code_verifier=$codeVerifier'
          '&client_id=${Configuration.clientID}',
        ),
        headers: {
          "Authorization": "Basic $base64codec",
          "Content-Type": "application/x-www-form-urlencoded",
        },
      );
      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.body) as Map<String, dynamic>;
      return jsonResponse;
    } on SocketException {
      throw const ApiAuthException(ApiAuthExceptionType.network);
    } catch (_) {
      throw const ApiAuthException(ApiAuthExceptionType.other);
    }
  }

  Future<void> requestUserAuthorization({
    required String codeChallenge,
    required String state,
  }) async {
    try {
      await launchUrl(
        Uri.parse(
          '${Configuration.accountHost}/authorize'
          '?client_id=${Configuration.clientID}'
          '&response_type=code'
          '&redirect_uri=${Configuration.redirectUri}'
          '&state=$state'
          '&scope=ugc-image-upload user-read-playback-state app-remote-control user-modify-playback-state playlist-read-private user-follow-modify playlist-read-collaborative user-follow-read user-read-currently-playing user-read-playback-position user-library-modify playlist-modify-private playlist-modify-public user-read-email user-top-read user-read-recently-played streaming user-read-private user-library-read'
          '&show_dialog=false'
          '&code_challenge_method=S256'
          '&code_challenge=$codeChallenge',
        ),
        mode: LaunchMode.externalApplication,
      );
    } catch (_) {
      throw const ApiAuthException(ApiAuthExceptionType.other);
    }
  }

  Future<Map<String, dynamic>> requestRefreshedAccessToken({
    //TODO Needed test. Currently not in use
    required String refreshToken,
    required String base64codec,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(
          '${Configuration.accountHost}/api/token'
          '?grant_type=refresh_token'
          '?refresh_token=$refreshToken'
          '?client_id=${Configuration.clientID}',
        ),
        headers: {
          "Authorization": "Basic $base64codec",
          "Content-Type": "application/x-www-form-urlencoded",
        },
      );
      final Map<String, dynamic> jsonResponse =
          jsonDecode(response.body) as Map<String, dynamic>;
      return jsonResponse;
    } on SocketException {
      throw const ApiAuthException(ApiAuthExceptionType.network);
    } catch (_) {
      throw const ApiAuthException(ApiAuthExceptionType.other);
    }
  }
}
