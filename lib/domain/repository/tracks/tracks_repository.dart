import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/repository/tracks/abstract_tracks_repository.dart';

import 'package:spotify_client/domain/entity/tracks/recommendations_model.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

class TrackRepository implements AbstractTracksRepository {
  @override
  Future<UsersSavedTracksModel> getUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/tracks',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return UsersSavedTracksModel.fromJson(response);
  }

  @override
  Future<List<dynamic>> checkUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final usersSavedTracks = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/tracks/contains',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as List<dynamic>;
    return usersSavedTracks;
  }

  @override
  Future<void> saveTracksForCurrentUser({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/tracks',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    );
  }

  @override
  Future<void> removeUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
  }) async {
    await GetIt.instance<ApiQueryHelper>().delete(
      endpoint: '/v1/me/tracks',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    );
  }

  @override
  Future<RecommendationsModel> getRecommendations({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/recommendations',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return RecommendationsModel.fromJson(response);
  }
}
