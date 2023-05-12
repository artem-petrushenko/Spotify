import 'package:spotify_client/domain/entity/albums/new_releases_entity.dart';

abstract class AlbumRepository {
  Future<List<ItemNewRelease>> getNewReleases({
    String? country,
    int? limit,
    int? offset,
  });
}
