import 'package:get_it/get_it.dart';
import 'package:spotify_client/domain/repository/playlists/abstract_playlists_repository.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/playlists/create_playlist_model.dart';
import 'package:spotify_client/domain/entity/playlists/current_users_playlists.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_items_model.dart';
import 'package:spotify_client/domain/entity/playlists/playlist_model.dart';

class PlaylistsRepository implements AbstractPlaylistsRepository {
  @override
  Future<CurrentUsersPlaylistsModel> getCurrentUsersPlaylists({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/playlists',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return CurrentUsersPlaylistsModel.fromJson(response);
  }

  @override
  Future<void> addItemsToPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    Map<String, dynamic>? body,
    required String playlistId,
  }) async {
    await GetIt.instance<ApiQueryHelper>().post(
      endpoint: 'v1/playlists/$playlistId/tracks',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
  }

  @override
  Future<CreatePlaylistModel> createPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    required Map<String, dynamic>? body,
    required String userId,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().post(
      endpoint: '/v1/users/$userId/playlists',
      queryParameters: queryParameters,
      body: body,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return CreatePlaylistModel.fromJson(response);
  }

  @override
  Future<PlaylistModel> getPlaylist({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    required String playlistID,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/playlists/$playlistID',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return PlaylistModel.fromJson(response);
  }

  @override
  Future<PlaylistItemsModel> getPlaylistItems({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
    required String playlistID,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/playlists/$playlistID/tracks',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return PlaylistItemsModel.fromJson(response);
  }
}
