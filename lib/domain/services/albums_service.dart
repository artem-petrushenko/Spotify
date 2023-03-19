import 'package:spotify_client/domain/api_client/albums_api_client.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';
import 'package:spotify_client/domain/entity/albums/album.dart';

class AlbumsService {
  final _sessionDataProvider = SessionDataProvider();
  final _albumsApiClient = AlbumsApiClient();

  Future<UsersSavedAlbumsModel> getUsersSavedAlbums({
    String? market,
    int? offset,
    int? limit,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final usersSavedAlbums = await _albumsApiClient.getUsersSavedAlbums(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'market': market,
        'offset': offset,
      },
    );
    return usersSavedAlbums;
  }

  Future<SeveralAlbumsModel> getSeveralAlbums({
    required List<String> ids,
    String? market,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final severalAlbums = await _albumsApiClient.getSeveralAlbums(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids,
        'market': market,
      },
    );
    return severalAlbums;
  }

  Future<AlbumModel> getAlbum({
    required String id,
    String? market,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final album = await _albumsApiClient.getAlbum(
      accessToken: accessToken ?? '',
      id: id,
      queryParameters: <String, dynamic>{
        'market': market,
      },
    );
    return album;
  }
}
