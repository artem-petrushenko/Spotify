import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

class ArtistsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<Artist> getArtist({
    required String id,
    required String accessToken,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/artists/$id',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return Artist.fromJson(response);
  }

  Future<ArtistsTopTracks> getArtistsTopTracks({
    required String id,
    required String accessToken,
    required String market,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/artists/$id/top-tracks'
          '?market=$market',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsTopTracks.fromJson(response);
  }

  Future<ArtistsRelatedArtists> getArtistsRelatedArtists({
    required String id,
    required String accessToken,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/artists/$id/related-artists',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsRelatedArtists.fromJson(response);
  }
}
