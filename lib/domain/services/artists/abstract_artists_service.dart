import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

abstract class AbstractArtistsService {
  Future<ArtistModel> getArtist({
    required String id,
  });

  Future<ArtistsTopTracksModel> getArtistsTopTracks({
    required String id,
    String? market,
  });

  Future<ArtistsRelatedArtistsModel> getArtistsRelatedArtists({
    required String id,
  });

  Future<ArtistsAlbumsModel> getArtistsAlbums({
    required String id,
    int? limit,
    int? offset,
    String? market,
    List<String>? includeGroups,
  });
}
