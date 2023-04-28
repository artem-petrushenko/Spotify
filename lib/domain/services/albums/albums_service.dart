import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/entity/albums/album_model.dart';
import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';
import 'package:spotify_client/domain/repository/session_data/abstract_session_data_repository.dart';

import 'package:spotify_client/domain/services/albums/abstract_albums_service.dart';

import 'package:spotify_client/domain/repository/albums/abstract_albums_repository.dart';

class AlbumsService implements AbstractAlbumsService {
  @override
  Future<UsersSavedAlbumsModel> getUsersSavedAlbums({
    String? market,
    int? offset,
    int? limit,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final usersSavedAlbums =
        GetIt.instance<AbstractAlbumsRepository>().getUsersSavedAlbums(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'market': market,
        'offset': offset,
      },
    );
    return usersSavedAlbums;
  }

  @override
  Future<SeveralAlbumsModel> getSeveralAlbums({
    required List<String> ids,
    String? market,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final severalAlbums =
        await GetIt.instance<AbstractAlbumsRepository>().getSeveralAlbums(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids,
        'market': market,
      },
    );
    return severalAlbums;
  }

  @override
  Future<AlbumModel> getAlbum({
    required String id,
    String? market,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final album = await GetIt.instance<AbstractAlbumsRepository>().getAlbum(
      accessToken: accessToken ?? '',
      id: id,
      queryParameters: <String, dynamic>{
        'market': market,
      },
    );
    return album;
  }

  @override
  Future<List<bool>> checkUsersSavedAlbums() {
    // TODO: implement checkUsersSavedAlbums
    throw UnimplementedError();
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
  Future<void> getAlbumTracks() {
    // TODO: implement getAlbumTracks
    throw UnimplementedError();
  }

  @override
  Future<void> getNewReleases() {
    // TODO: implement getNewReleases
    throw UnimplementedError();
  }
}
