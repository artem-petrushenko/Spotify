import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/tracks/recommendations_model.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

class TracksApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<UsersSavedTracksModel> getUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/me/tracks',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return UsersSavedTracksModel.fromJson(response);
  }

  Future<List<dynamic>> checkUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final usersSavedTracks = await _apiQueryHelper.get(
      endpoint: '/v1/me/tracks/contains',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as List<dynamic>;
    return usersSavedTracks;
  }

  Future<void> saveTracksForCurrentUser({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
  }) async {
    await _apiQueryHelper.put(
      endpoint: '/v1/me/tracks',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    );
  }

  Future<void> removeUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
  }) async {
    await _apiQueryHelper.delete(
      endpoint: '/v1/me/tracks',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    );
  }

  Future<RecommendationsModel> getRecommendations({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/recommendations',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return RecommendationsModel.fromJson(response);
  }
}
