import 'package:spotify_client/domain/entity/playlists/create_playlist_model.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_items_model.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_model.dart';

abstract class AbstractPlaylistsService {
  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists({
    int? offset,
    int? limit,
  });

  Future<void> addItemsToPlaylist({
    required String playlistId,
    int? position,
    List<String>? uris,
  });

  Future<CreatePlaylistModel> createPlaylist({
    required String userId,
    required String name,
    bool? public,
    bool? collaborative,
    String? description,
  });

  Future<PlaylistModel> getPlaylist({
    required String playlistID,
    String? market,
    String? fields,
    String? additionalTypes,
  });

  Future<PlaylistItemsModel> getPlaylistItems({
    required String playlistID,
    String? market,
    String? fields,
    int? offset,
    int? limit,
    String? additionalTypes,
  });
}
