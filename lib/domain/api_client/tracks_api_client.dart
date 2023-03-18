import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

class TracksApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<UsersSavedTracksModel> getUsersSavedTracks({
    required String accessToken,
    required String market,
    required int offset,
    required int limit,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/tracks'
          '?limit=$limit'
          '&market=$market'
          '&offset=$offset',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return UsersSavedTracksModel.fromJson(response);
  }
}
