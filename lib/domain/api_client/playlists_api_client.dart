import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';

class PlaylistsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/me/playlists',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return CurrentUsersPlaylistsModel.fromJson(response);
  }
}
