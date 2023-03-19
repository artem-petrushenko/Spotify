import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

class ArtistsApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<ArtistModel> getArtist({
    required String id,
    required String accessToken,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/artists/$id',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistModel.fromJson(response);
  }

  Future<ArtistsTopTracksModel> getArtistsTopTracks({
    required String id,
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/artists/$id/top-tracks',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsTopTracksModel.fromJson(response);
  }

  Future<ArtistsRelatedArtistsModel> getArtistsRelatedArtists({
    required String id,
    required String accessToken,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/artists/$id/related-artists',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsRelatedArtistsModel.fromJson(response);
  }

  Future<ArtistsAlbumsModel> getArtistsAlbums({
    required String id,
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/artists/$id/albums',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsAlbumsModel.fromJson(response);
  }
}
