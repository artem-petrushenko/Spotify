import 'package:spotify_client/domain/api_client/playlists_api_client.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';

class PlaylistsService {
  final _sessionDataProvider = SessionDataProvider();
  final _playlistsApiClient = PlaylistsApiClient();

  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists({
    int? offset,
    int? limit,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final currentUsersPlaylists =
        await _playlistsApiClient.getCurrentUsersPlaylists(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'offset': offset,
        'limit': limit,
      },
    );
    return currentUsersPlaylists;
  }
}
