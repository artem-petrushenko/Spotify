import 'package:spotify_client/domain/entity/albums/album_model.dart';
import 'package:spotify_client/domain/entity/albums/several_albums.dart';
import 'package:spotify_client/domain/entity/albums/users_saved_album.dart';

abstract class AbstractAlbumsService {
  Future<UsersSavedAlbumsModel> getUsersSavedAlbums({
    String? market,
    int? offset,
    int? limit,
  });

  Future<AlbumModel> getAlbum({
    required String id,
    String? market,
  });

  Future<SeveralAlbumsModel> getSeveralAlbums({
    required List<String> ids,
    String? market,
  });

  Future<void> saveAlbumsForCurrentUser();

  Future<void> removeUsersSavedAlbums();

  Future<List<bool>> checkUsersSavedAlbums();

  Future<void> getAlbumTracks();

  Future<void> getNewReleases();
}
