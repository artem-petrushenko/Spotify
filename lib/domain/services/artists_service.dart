import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/api_client/artists_api_client.dart';

import 'package:spotify_client/domain/entity/artists/artist.dart';

class ArtistService {
  final _sessionDataProvider = SessionDataProvider();
  final _artistsApiClient = ArtistsApiClient();

  Future<Artist> getArtist({
    required String id,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final artist = await _artistsApiClient.getArtist(
      accessToken: accessToken ?? '',
      id: id,
    );
    return artist;
  }
}
