import 'dart:io';

import 'package:spotify_client/src/common/data/client/rest_client.dart';
import 'package:spotify_client/src/feature/liked_songs/data/provider/remote/liked_songs_network_data_provider.dart';
import 'package:spotify_client/src/feature/liked_songs/model/users_saved_tracks_model.dart';

class LikedSongsNetworkDataProviderImpl
    implements LikedSongsNetworkDataProvider {
  const LikedSongsNetworkDataProviderImpl({
    required final RestClient client,
  }) : _client = client;

  final RestClient _client;

  @override
  Future<Iterable<UsersSavedTracksModel>> getUsersSavedTracks({
    required String market,
    required int offset,
    required int limit,
    required String accessToken,
  }) async {
    final response = await _client.get(
      host: 'api.spotify.com',
      endpoint: 'v1/me/tracks',
      // TODO: toString?
      queryParams: {
        'market': market,
        'offset': offset.toString(),
        'limit': limit.toString(),
      },
      headers: {
        HttpHeaders.authorizationHeader: "Bearer $accessToken",
        HttpHeaders.contentTypeHeader: "application/json",
      },
    ) as Map<String, dynamic>;
    List<dynamic>? items = response['items'] as List<dynamic>?;
    if (items == null) return [];
    return items
        .map((item) =>
            UsersSavedTracksModel.fromJson(item as Map<String, dynamic>))
        .toList();
  }
}
