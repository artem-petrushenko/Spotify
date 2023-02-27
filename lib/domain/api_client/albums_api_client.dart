import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';

class AlbumsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<UsersSavedAlbums> getUsersSavedAlbums({
    required String accessToken,
    required String market,
    required int offset,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/albums'
          '?limit=10'
          '&market=$market'
          '&offset=$offset',
      accessToken: accessToken,
    );
    return UsersSavedAlbums.fromJson(response);
  }
}
