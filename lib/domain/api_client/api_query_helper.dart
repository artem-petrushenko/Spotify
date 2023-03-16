import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:spotify_client/configuration/configuration.dart';

import 'package:spotify_client/domain/api_client/api_client_exception.dart';

class ApiQueryHelper {
  Future<dynamic> get({
    required String url,
    required String accessToken,
  }) async {
    try {
      final response = await http.get(
        Uri.parse('${Configuration.queryHost}$url'),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $accessToken",
          HttpHeaders.contentTypeHeader: "application/json",
        },
      );
      print(response.body);
      _checkStatusCode(response);
      if (response.statusCode == 200) return responseToMap(response);
      return;
    } on SocketException {
      throw const ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } catch (_) {
      throw const ApiClientException(ApiClientExceptionType.other);
    }
  }

  Future<void> delete({
    required String url,
    required String accessToken,
    required Map<String, dynamic>? body,
  }) async {
    try {
      final response = await http.delete(
        Uri.parse('${Configuration.queryHost}$url'),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $accessToken",
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: body,
      );
      _checkStatusCode(response);
      return;
    } on SocketException {
      throw const ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } catch (_) {
      throw const ApiClientException(ApiClientExceptionType.other);
    }
  }

  Future<void> put({
    required String url,
    required String accessToken,
    required Map<String, dynamic>? body,
  }) async {
    try {
      final response = await http.put(
        Uri.parse('${Configuration.queryHost}$url'),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $accessToken",
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: body,
      );
      _checkStatusCode(response);
      return;
    } on SocketException {
      throw const ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } catch (_) {
      throw const ApiClientException(ApiClientExceptionType.other);
    }
  }

  Future<dynamic> post({
    required String url,
    required String accessToken,
    required Map<String, dynamic>? body,
    required Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('${Configuration.queryHost}$url')
            .replace(queryParameters: queryParameters),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $accessToken",
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: body,
      );
      _checkStatusCode(response);
      if (response.statusCode == 201) return responseToMap(response);
      return;
    } on SocketException {
      throw const ApiClientException(ApiClientExceptionType.network);
    } on ApiClientException {
      rethrow;
    } catch (_) {
      throw const ApiClientException(ApiClientExceptionType.other);
    }
  }

  void _checkStatusCode(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return;
      case 201:
        return;
      case 204:
        return;
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

  Map<String, dynamic>? responseToMap(http.Response response) =>
      jsonDecode(response.body) as Map<String, dynamic>;

  // Map<String, dynamic>? removeNullValue(Map<String, dynamic>? map) {
  //   if (map?.length != 0) {
  //     return map?.removeWhere((key, value) => value == null)
  //         as Map<String, dynamic>;
  //   }
  //   return null;
  // }
}
