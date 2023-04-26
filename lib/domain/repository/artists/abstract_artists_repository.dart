import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

abstract class AbstractArtistsRepository {
  Future<ArtistModel> getArtist({
    required String id,
    required String accessToken,
  });

  Future<ArtistsTopTracksModel> getArtistsTopTracks({
    required String id,
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<ArtistsRelatedArtistsModel> getArtistsRelatedArtists({
    required String id,
    required String accessToken,
  });

  Future<ArtistsAlbumsModel> getArtistsAlbums({
    required String id,
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });
}
