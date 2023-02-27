import 'package:spotify_client/domain/api_client/albums_api_client.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';

class AlbumsService {
  final _sessionDataProvider = SessionDataProvider();
  final _albumsApiClient = AlbumsApiClient();

  Future<UsersSavedAlbums> getUsersSavedAlbums({
    required String market,
    required int offset,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final usersSavedAlbums = await _albumsApiClient.getUsersSavedAlbums(
      accessToken: accessToken ?? '',
      market: market,
      offset: offset,
    );
    return usersSavedAlbums;
  }
}
