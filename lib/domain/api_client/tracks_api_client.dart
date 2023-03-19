import 'package:spotify_client/domain/api_client/api_query_helper.dart';
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
}
