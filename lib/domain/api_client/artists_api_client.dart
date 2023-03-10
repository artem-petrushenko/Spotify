import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/entity/artists/artist.dart';

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
}
