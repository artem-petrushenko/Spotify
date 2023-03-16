import 'package:spotify_client/domain/api_client/albums_api_client.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';
import 'package:spotify_client/domain/entity/albums/album.dart';

class AlbumsService {
  final _sessionDataProvider = SessionDataProvider();
  final _albumsApiClient = AlbumsApiClient();

  Future<UsersSavedAlbums> getUsersSavedAlbums({
    required String market,
    required int offset,
    required int limit,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final usersSavedAlbums = await _albumsApiClient.getUsersSavedAlbums(
      accessToken: accessToken ?? '',
      market: market,
      offset: offset,
      limit: limit,
    );
    return usersSavedAlbums;
  }

  Future<SeveralAlbums> getSeveralAlbums({
    required String market,
    required List<String> ids,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final severalAlbums = await _albumsApiClient.getSeveralAlbums(
      accessToken: accessToken ?? '',
      ids: ids.join(','),
      market: market,
    );
    return severalAlbums;
  }

  Future<Album> getAlbum({
    required String market,
    required String id,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final album = await _albumsApiClient.getAlbum(
      accessToken: accessToken ?? '',
      id: id,
      market: market,
    );
    return album;
  }
}
