import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';

class PlaylistsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<CurrentUsersPlaylists> getCurrentUsersPlaylists({
    required String accessToken,
    required int offset,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/playlists'
          '?offset=$offset'
          '&limit=10',
      accessToken: accessToken,
    );
    return CurrentUsersPlaylists.fromJson(response);
  }
}
