import 'package:spotify_client/src/feature/liked_songs/data/provider/remote/liked_songs_network_data_provider.dart';
import 'package:spotify_client/src/feature/liked_songs/data/repository/liked_songs_repository.dart';

import 'package:spotify_client/src/feature/liked_songs/model/users_saved_tracks_model.dart';


class LikedSongsRepositoryImpl implements LikedSongsRepository {
  const LikedSongsRepositoryImpl({
    required final LikedSongsNetworkDataProvider likedSongsNetworkDataProvider,
  }) : _likedSongsNetworkDataProvider = likedSongsNetworkDataProvider;

  final LikedSongsNetworkDataProvider _likedSongsNetworkDataProvider;

  @override
  Future<Iterable<UsersSavedTracksModel>> getUsersSavedTracks({
    required String market,
    required int offset,
    required int limit,
    required String accessToken,
  }) async {
    return await _likedSongsNetworkDataProvider.getUsersSavedTracks(
      market: market,
      offset: offset,
      limit: limit,
      accessToken: accessToken,
    );
  }
}
