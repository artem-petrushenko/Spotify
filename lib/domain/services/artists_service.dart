import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/api_client/artists_api_client.dart';

import 'package:spotify_client/domain/entity/artists/artist.dart';
import 'package:spotify_client/domain/entity/artists/artists_albums.dart';
import 'package:spotify_client/domain/entity/artists/artists_related_artists.dart';
import 'package:spotify_client/domain/entity/artists/artists_top_tracks.dart';

class ArtistService {
  final _sessionDataProvider = SessionDataProvider();
  final _artistsApiClient = ArtistsApiClient();

  Future<ArtistModel> getArtist({
    required String id,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final artist = await _artistsApiClient.getArtist(
      accessToken: accessToken ?? '',
      id: id,
    );
    return artist;
  }

  Future<ArtistsTopTracksModel> getArtistsTopTracks({
    required String id,
    String? market,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final artistsTopTracks = await _artistsApiClient.getArtistsTopTracks(
      accessToken: accessToken ?? '',
      id: id,
      queryParameters: <String, dynamic>{
        'market': market,
      },
    );
    return artistsTopTracks;
  }

  Future<ArtistsRelatedArtistsModel> getArtistsRelatedArtists({
    required String id,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final artistsRelatedArtists =
        await _artistsApiClient.getArtistsRelatedArtists(
      accessToken: accessToken ?? '',
      id: id,
    );
    return artistsRelatedArtists;
  }

  Future<ArtistsAlbumsModel> getArtistsAlbums({
    required String id,
    int? limit,
    int? offset,
    String? market,
    List<String>? includeGroups,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final artistsAlbum = await _artistsApiClient.getArtistsAlbums(
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
