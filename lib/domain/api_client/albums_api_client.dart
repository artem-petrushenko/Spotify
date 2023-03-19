import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';
import 'package:spotify_client/domain/entity/albums/album.dart';

class AlbumsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<UsersSavedAlbumsModel> getUsersSavedAlbums({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/me/albums',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return UsersSavedAlbumsModel.fromJson(response);
  }

  Future<SeveralAlbumsModel> getSeveralAlbums({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/albums',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return SeveralAlbumsModel.fromJson(response);
  }

  Future<AlbumModel> getAlbum({
    required String accessToken,
    required String id,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/albums/$id',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return AlbumModel.fromJson(response);
  }
}
