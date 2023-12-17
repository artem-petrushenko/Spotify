import 'package:spotify_client/src/feature/liked_songs/model/users_saved_tracks_model.dart';

abstract interface class LikedSongsNetworkDataProvider {
  Future<Iterable<UsersSavedTracksModel>> getUsersSavedTracks({
    required String market,
    required int offset,
    required int limit,
    required String accessToken,
  });
}
