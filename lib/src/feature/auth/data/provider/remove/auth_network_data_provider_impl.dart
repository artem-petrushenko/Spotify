import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:spotify_client/src/common/data/client/rest_client.dart';
import 'package:spotify_client/src/feature/auth/data/provider/remove/auth_network_data_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:spotify_client/domain/api_client/api_auth_exception.dart';
import 'package:spotify_client/utils/constants/strings.dart';

//TODO: Rewrite to Rest Client
class AuthNetworkDataProviderImpl implements AuthNetworkDataProvider {
  const AuthNetworkDataProviderImpl({
    required final RestClient client,
  }) : _client = client;

  final RestClient _client;

  @override
  Future<Map<String, dynamic>> requestAccessToken({
    required String base64codec,
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      final response = await http.post(
        Uri.https(accountHost, '/api/token', queryParameters),
        headers: {
          HttpHeaders.authorizationHeader: "Basic $base64codec",
          HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded",
        },
      );
      return jsonDecode(response.body) as Map<String, dynamic>;
    } on SocketException {
      throw const ApiAuthException(ApiAuthExceptionType.network);
    } catch (_) {
      throw const ApiAuthException(ApiAuthExceptionType.other);
    }
  }

  @override
  Future<void> requestUserAuthorization({
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      await launchUrl(
        Uri.https(
            accountHost, '/authorize', _mapDynamicToString(queryParameters)),
        mode: LaunchMode.externalApplication,
      );
    } catch (_) {
      throw const ApiAuthException(ApiAuthExceptionType.other);
    }
  }

  @override
  Future<Map<String, dynamic>> requestRefreshedAccessToken({
    required String base64codec,
    required Map<String, dynamic> queryParameters,
  }) async {
    try {
      final response = await http.post(
        Uri.https(accountHost, '/api/token', queryParameters),
        headers: {
          HttpHeaders.authorizationHeader: "Basic $base64codec",
          HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded",
        },
      );
      return jsonDecode(response.body) as Map<String, dynamic>;
    } on SocketException {
      throw const ApiAuthException(ApiAuthExceptionType.network);
    } catch (_) {
      throw const ApiAuthException(ApiAuthExceptionType.other);
    }
  }

  Map<String, String> _mapDynamicToString(Map<String, dynamic> map) =>
      map.map((key, dynamic value) => MapEntry(key, value.toString()));
}
