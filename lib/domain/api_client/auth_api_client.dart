import 'package:http/http.dart' as http;

import 'package:url_launcher/url_launcher.dart';

import 'package:spotify_client/configuration/configuration.dart';

class AuthApiClient {
  Future<http.Response> requestAccessToken({
    required String code,
    required String codeVerifier,
    required String base64codec,
  }) async {
    final response = await http.post(
      Uri.parse(
        '${Configuration.host}/api/token'
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
    return response;
  }

  Future<void> requestUserAuthorization({
    required String codeChallenge,
  }) async {
    await launchUrl(
      Uri.parse(
        '${Configuration.host}/authorize'
        '?response_type=code'
        '&client_id=${Configuration.clientID}'
        '&scope=ugc-image-upload user-read-playback-state app-remote-control user-modify-playback-state playlist-read-private user-follow-modify playlist-read-collaborative user-follow-read user-read-currently-playing user-read-playback-position user-library-modify playlist-modify-private playlist-modify-public user-read-email user-top-read user-read-recently-played streaming user-read-private user-library-read'
        '&redirect_uri=${Configuration.redirectUri}'
        '&code_challenge_method=S256'
        '&code_challenge=$codeChallenge',
      ),
      mode: LaunchMode.externalApplication,
    );
  }

  Future<http.Response> requestRefreshedAccessToken({
    //TODO Needed test. Currently not in use
    required String refreshToken,
    required String base64codec,
  }) async {
    final response = await http.post(
      Uri.parse(
        '${Configuration.host}/api/token'
        '?grant_type=refresh_token'
        '?refresh_token=$refreshToken'
        '?client_id=${Configuration.clientID}',
      ),
      headers: {
        "Authorization": "Basic $base64codec",
        "Content-Type": "application/x-www-form-urlencoded",
      },
    );
    return response;
  }
}
