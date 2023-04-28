import 'package:get_it/get_it.dart';
import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/albums/album_model.dart';
import 'package:spotify_client/domain/entity/albums/new_releases_model.dart';
import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';

import 'package:spotify_client/domain/repository/albums/abstract_albums_repository.dart';

class AlbumsRepository implements AbstractAlbumsRepository {
  @override
  Future<AlbumModel> getAlbum({
    required String accessToken,
    required String id,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/albums/$id',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return AlbumModel.fromJson(response);
  }

  @override
  Future<List<bool>> checkUsersSavedAlbums() {
    // TODO: implement checkUsersSavedAlbums
    throw UnimplementedError();
  }

  @override
  Future<SeveralAlbumsModel> getSeveralAlbums({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/albums',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return SeveralAlbumsModel.fromJson(response);
  }

  @override
  Future<UsersSavedAlbumsModel> getUsersSavedAlbums({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/albums',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return UsersSavedAlbumsModel.fromJson(response);
  }

  @override
  Future<void> removeUsersSavedAlbums() {
    // TODO: implement removeUsersSavedAlbums
    throw UnimplementedError();
  }

  @override
  Future<void> saveAlbumsForCurrentUser() {
    // TODO: implement saveAlbumsForCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<NewReleasesModel> getNewReleases({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/browse/new-releases',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return NewReleasesModel.fromJson(response);
  }
}
