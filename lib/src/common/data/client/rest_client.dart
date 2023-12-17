import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spotify_client/src/core/logger.dart';

class RestClient {
  const RestClient();

  Future<Map<String, dynamic>?> get({
    required String host,
    required String endpoint,
    Map<String, Object?>? body,
    Map<String, String>? headers,
    Map<String, Object?>? queryParams,
  }) async {
    try {
      final response = await http.get(
        Uri.https(host, endpoint, queryParams),
        headers: headers,
      );
      return jsonDecode(response.body) as Map<String, dynamic>?;
    } on Object catch (error, stackTrace) {
      logger.error('GET: ', error: error, stackTrace: stackTrace);
      Error.throwWithStackTrace(error, stackTrace);
    }
  }
}
