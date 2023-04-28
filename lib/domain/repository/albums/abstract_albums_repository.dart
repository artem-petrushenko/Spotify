import 'package:spotify_client/domain/entity/albums/album_model.dart';
import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';
import 'package:spotify_client/domain/entity/albums/new_releases_model.dart';

abstract class AbstractAlbumsRepository {
  Future<UsersSavedAlbumsModel> getUsersSavedAlbums({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<AlbumModel> getAlbum({
    required String accessToken,
    required String id,
    Map<String, dynamic>? queryParameters,
  });

  Future<SeveralAlbumsModel> getSeveralAlbums({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });

  Future<void> saveAlbumsForCurrentUser();

  Future<void> removeUsersSavedAlbums();

  Future<List<bool>> checkUsersSavedAlbums();

// Future<AlbumTracksModel> getAlbumTracks();
  Future<NewReleasesModel> getNewReleases({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });
}
