import 'package:spotify_client/domain/entity/playlists/create_playlist_model.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_items_model.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_model.dart';

abstract class AbstractPlaylistsRepository {
  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<void> addItemsToPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
    required String playlistId,
  });

  Future<CreatePlaylistModel> createPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    required Map<String, dynamic>? body,
    required String userId,
  });

  Future<PlaylistModel> getPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    required String playlistID,
  });

  Future<PlaylistItemsModel> getPlaylistItems({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    required String playlistID,
  });
}
