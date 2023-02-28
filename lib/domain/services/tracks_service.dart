import 'package:spotify_client/domain/api_client/tracks_api_client.dart';
import 'package:spotify_client/domain/data_providers/session_data_provider.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

class TracksService {
  final _sessionDataProvider = SessionDataProvider();
  final _tracksApiClient = TracksApiClient();

  Future<UsersSavedTracks> getUsersSavedTracksData({
    required String market,
    required int offset,
    required int limit,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final usersSavedTracks = await _tracksApiClient.getUsersSavedTracks(
      accessToken: accessToken ?? '',
      market: market,
      offset: offset,
      limit: limit,
    );
    return usersSavedTracks;
  }
}
