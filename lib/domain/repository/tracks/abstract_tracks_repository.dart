import 'package:spotify_client/domain/entity/tracks/recommendations_model.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

abstract class AbstractTracksRepository {
  Future<UsersSavedTracksModel> getUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });

  Future<List<dynamic>> checkUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });

  Future<void> saveTracksForCurrentUser({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
  });

  Future<void> removeUsersSavedTracks({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
  });

  Future<RecommendationsModel> getRecommendations({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });
}
