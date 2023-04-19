import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/playlists/create_playlist_model.dart';
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

  Future<void> addItemsToPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
    required String playlistId,
  }) async {
    await _apiQueryHelper.post(
      endpoint: 'v1/playlists/$playlistId/tracks',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
  }

  Future<CreatePlaylistModel> createPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    required Map<String, dynamic>? body,
    required String userId,
  }) async {
    final response = await _apiQueryHelper.post(
      endpoint: 'v1/users/$userId/playlists',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return CreatePlaylistModel.fromJson(response);
  }
}
