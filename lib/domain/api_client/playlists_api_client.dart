import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';

class PlaylistsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists({
    required String accessToken,
    required int offset,
    required int limit,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/playlists'
          '?offset=$offset'
          '&limit=$limit',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return CurrentUsersPlaylistsModel.fromJson(response);
  }
}
