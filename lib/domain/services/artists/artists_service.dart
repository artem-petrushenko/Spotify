import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/services/artists/abstract_artists_service.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

import 'package:spotify_client/domain/repository/artists/abstract_artists_repository.dart';

class ArtistsService implements AbstractArtistsService {
  @override
  Future<ArtistModel> getArtist({
    required String id,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final artist = await GetIt.instance<AbstractArtistsRepository>().getArtist(
      accessToken: accessToken ?? '',
      id: id,
    );
    return artist;
  }

  @override
  Future<ArtistsTopTracksModel> getArtistsTopTracks({
    required String id,
    String? market,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final artistsTopTracks =
        await GetIt.instance<AbstractArtistsRepository>().getArtistsTopTracks(
      accessToken: accessToken ?? '',
      id: id,
      queryParameters: <String, dynamic>{
        'market': market,
      },
    );
    return artistsTopTracks;
  }

  @override
  Future<ArtistsRelatedArtistsModel> getArtistsRelatedArtists({
    required String id,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final artistsRelatedArtists =
        await GetIt.instance<AbstractArtistsRepository>()
            .getArtistsRelatedArtists(
      accessToken: accessToken ?? '',
      id: id,
    );
    return artistsRelatedArtists;
  }

  @override
  Future<ArtistsAlbumsModel> getArtistsAlbums({
    required String id,
    int? limit,
    int? offset,
    String? market,
    List<String>? includeGroups,
  }) async {
    final accessToken =
        await GetIt.instance<SessionDataProvider>().getAccessToken();
    final artistsAlbum =
        await GetIt.instance<AbstractArtistsRepository>().getArtistsAlbums(
      accessToken: accessToken ?? '',
      id: id,
      queryParameters: <String, dynamic>{
        'include_groups': includeGroups?.join(','),
        'limit': limit,
        'market': market,
        'offset': offset,
      },
    );
    return artistsAlbum;
  }
}
