import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:spotify_client/configuration/configuration.dart';

import 'package:spotify_client/domain/api_client/api_client_exception.dart';

class ApiQueryHelper {
  Future<Map<String, dynamic>> get({
    required String url,
    required String accessToken,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('${Configuration.queryHost}$url'),
        headers: {
          "Authorization": "Bearer $accessToken",
          "Content-Type": "application/json",
        },
      );
      final responseJson = _checkStatusCode(response);
      return responseJson;
    } on SocketException {
      throw const ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } catch (_) {
      throw const ApiClientException(ApiClientExceptionType.other);
    }
  }

  Map<String, dynamic> _checkStatusCode(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final Map<String, dynamic> responseJson =
            jsonDecode(response.body) as Map<String, dynamic>;
        return responseJson;
      case 401:
        throw const ApiClientException(ApiClientExceptionType.unauthorized);
      case 403:
        throw const ApiClientException(ApiClientExceptionType.forbidden);
      case 429:
        throw const ApiClientException(ApiClientExceptionType.tooManyRequests);
      default:
        throw const ApiClientException(ApiClientExceptionType.other);
    }
  }
}
