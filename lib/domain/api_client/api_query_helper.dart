import 'dart:convert';
import 'dart:developer';
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
    required String endpoint,
    required String accessToken,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await http.put(
        Uri.https(
            'api.spotify.com', endpoint, _removeMapNulls(queryParameters)),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $accessToken",
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: body,
      );
      _checkStatusCode(response);
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
    log('${response.statusCode} ${response.request}');
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

  Map<String, dynamic>? _removeMapNulls(Map<String, dynamic>? map) =>
      map?..removeWhere((key, dynamic value) => value == null);
}
