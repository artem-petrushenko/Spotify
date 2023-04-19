import 'package:spotify_client/domain/api_client/tracks_api_client.dart';
import 'package:spotify_client/domain/data_providers/session_data_provider.dart';
import 'package:spotify_client/domain/entity/tracks/users_saved_tracks.dart';

class TracksService {
  final _sessionDataProvider = SessionDataProvider();
  final _tracksApiClient = TracksApiClient();

  Future<UsersSavedTracksModel> getUsersSavedTracks({
    String? market,
    int? offset,
    int? limit,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final usersSavedTracks = await _tracksApiClient.getUsersSavedTracks(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'limit': limit,
        'market': market,
        'offset': offset,
      },
    );
    return usersSavedTracks;
  }

  Future<List<dynamic>> checkUsersSavedTracks({
    required List<String> ids,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final usersSavedTracks = await _tracksApiClient.checkUsersSavedTracks(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids.join(','),
      },
    );
    return usersSavedTracks;
  }

  Future<void> saveTracksForCurrentUser({
    required List<String> ids,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _tracksApiClient.saveTracksForCurrentUser(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids.join(','),
      },
      body: <String, dynamic>{
        'ids': ids,
      },
    );
  }

  Future<void> removeUsersSavedTracks({
    required List<String> ids,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _tracksApiClient.removeUsersSavedTracks(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'ids': ids.join(','),
      },
      body: <String, dynamic>{
        'ids': ids,
      },
    );
  }
}
