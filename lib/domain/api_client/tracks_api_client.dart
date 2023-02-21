import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

class TracksApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<UsersSavedTracks> getUsersSavedTracks({
    required String accessToken,
    required String market,
    required int offset,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/tracks'
          '?limit=20'
          '&market=$market'
          '&offset=$offset',
      accessToken: accessToken,
    );
    return UsersSavedTracks.fromJson(response);
  }
}
