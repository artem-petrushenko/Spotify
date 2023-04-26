import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/artists/abstract_artists_repository.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

class ArtistsRepository implements AbstractArtistsRepository {
  @override
  Future<ArtistModel> getArtist({
    required String id,
    required String accessToken,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/artists/$id',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistModel.fromJson(response);
  }

  @override
  Future<ArtistsTopTracksModel> getArtistsTopTracks({
    required String id,
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/artists/$id/top-tracks',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsTopTracksModel.fromJson(response);
  }

  @override
  Future<ArtistsRelatedArtistsModel> getArtistsRelatedArtists({
    required String id,
    required String accessToken,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/artists/$id/related-artists',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsRelatedArtistsModel.fromJson(response);
  }

  @override
  Future<ArtistsAlbumsModel> getArtistsAlbums({
    required String id,
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/artists/$id/albums',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return ArtistsAlbumsModel.fromJson(response);
  }
}
