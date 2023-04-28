import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/playlists/abstract_playlists_repository.dart';
import 'package:spotify_client/domain/repository/session_data/abstract_session_data_repository.dart';

import 'package:spotify_client/domain/services/playlists/abstract_playlists_service.dart';

import 'package:spotify_client/domain/entity/playlists/create_playlist_model.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_items_model.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_model.dart';

class PlaylistsService implements AbstractPlaylistsService {
  @override
  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists({
    int? offset,
    int? limit,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final currentUsersPlaylists =
        await GetIt.instance<AbstractPlaylistsRepository>()
            .getCurrentUsersPlaylists(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'offset': offset,
        'limit': limit,
      },
    );
    return currentUsersPlaylists;
  }

  @override
  Future<void> addItemsToPlaylist({
    required String playlistId,
    int? position,
    List<String>? uris,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlaylistsRepository>().addItemsToPlaylist(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'playlist_id': playlistId,
        'position': position,
        'uris': uris?.join(', '),
      },
      body: <String, dynamic>{
        'uris': uris,
        'position': position,
      },
      playlistId: playlistId,
    );
  }

  @override
  Future<CreatePlaylistModel> createPlaylist({
    required String userId,
    required String name,
    bool? public,
    bool? collaborative,
    String? description,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final createPlaylistModel =
        await GetIt.instance<AbstractPlaylistsRepository>().createPlaylist(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'user_id': userId,
      },
      body: <String, dynamic>{
        'name': name,
        'public': public,
        'collaborative': collaborative,
        'description': description,
      },
      userId: userId,
    );
    return createPlaylistModel;
  }

  @override
  Future<PlaylistModel> getPlaylist({
    required String playlistID,
    String? market,
    String? fields,
    String? additionalTypes,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final playlistModel =
        await GetIt.instance<AbstractPlaylistsRepository>().getPlaylist(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'playlist_id': playlistID,
        'market': market,
        'fields': fields,
        'additional_types': additionalTypes
      },
      playlistID: playlistID,
    );
    return playlistModel;
  }

  @override
  Future<PlaylistItemsModel> getPlaylistItems({
    required String playlistID,
    String? market,
    String? fields,
    int? offset,
    int? limit,
    String? additionalTypes,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final playlistItemsModel =
        await GetIt.instance<AbstractPlaylistsRepository>().getPlaylistItems(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'playlist_id': playlistID,
        'market': market,
        'fields': fields,
        'limit': limit,
        'offset': offset,
        'additional_types': additionalTypes
      },
      playlistID: playlistID,
    );
    return playlistItemsModel;
  }
}
