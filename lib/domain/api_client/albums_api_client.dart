import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';

class AlbumsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<UsersSavedAlbums> getUsersSavedAlbums({
    required String accessToken,
    required String market,
    required int offset,
    required int limit,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/albums'
          '?limit=$limit'
          '&market=$market'
          '&offset=$offset',
      accessToken: accessToken,
    );
    return UsersSavedAlbums.fromJson(response);
  }

  Future<SeveralAlbums> getSeveralAlbums({
    required String accessToken,
    required String ids,
    required String market,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/albums'
          '?ids=$ids'
          '&market=$market',
      accessToken: accessToken,
    );
    return SeveralAlbums.fromJson(response);
  }
}
