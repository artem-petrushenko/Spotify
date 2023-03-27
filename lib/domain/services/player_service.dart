import 'package:spotify_client/configuration/api_query_constants.dart';
import 'package:spotify_client/domain/api_client/player_api_client.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';
import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/entity/player/users_queue.dart';

class PlayerService {
  final _sessionDataProvider = SessionDataProvider();
  final _playerApiClient = PlayerApiClient();

  Future<CurrentlyPlayingTrackModel> getCurrentlyPlayingTrack({
    String? additionalTypes,
    String? market,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final currentlyPlayingTrack =
        await _playerApiClient.getCurrentlyPlayingTrack(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'additional_types': additionalTypes,
        'market': market,
      },
    );
    return currentlyPlayingTrack;
  }

  Future<UsersQueueModel> getTheUsersQueue() async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final usersQueue = await _playerApiClient.getTheUsersQueue(
      accessToken: accessToken ?? '',
    );
    return usersQueue;
  }

  Future<AvailableDevicesModel> getAvailableDevices() async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final availableDevices = await _playerApiClient.getAvailableDevices(
      accessToken: accessToken ?? '',
    );
    return availableDevices;
  }

  Future<void> transferPlayback({
    required List<String> deviceIds,
    bool? play,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.transferPlayback(
      accessToken: accessToken ?? '',
      body: <String, dynamic>{
        'device_ids': deviceIds,
        'play': play,
      },
    );
  }

  Future<void> setRepeatMode({
    required String state,
    String? deviceId,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final nextState = _getNextRepeatModeState(state);
    await _playerApiClient.setRepeatMode(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'state': nextState,
        'device_id': deviceId,
      },
    );
  }

  String _getNextRepeatModeState(String currentState) {
    switch (currentState) {
      case ApiQueryConstants.repeatModeStateContext:
        return ApiQueryConstants.repeatModeStateTrack;
      case ApiQueryConstants.repeatModeStateTrack:
        return ApiQueryConstants.repeatModeStateOff;
      case ApiQueryConstants.repeatModeStateOff:
        return ApiQueryConstants.repeatModeStateContext;
      default:
        return ApiQueryConstants.repeatModeStateOff;
    }
  }

  Future<void> pausePlayback({
    String? deviceId,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.pausePlayback(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'device_id': deviceId,
      },
    );
  }

  Future<void> startResumePlayback({
    String? deviceId,
    String? contextUri,
    List<String>? uris,
    Map<String, dynamic>? offset,
    int? positionMs,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.startResumePlayback(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'device_id': deviceId,
      },
      body: <String, dynamic>{
        'context_uri': contextUri,
        'uris': uris,
        'offset': offset,
        'position_ms': positionMs,
      },
    );
  }

  Future<void> skipToNext({
    String? deviceId,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.skipToNext(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'device_id': deviceId,
      },
    );
  }

  Future<void> skipToPrevious({
    String? deviceId,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.skipToPrevious(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'device_id': deviceId,
      },
    );
  }

  Future<void> seekToPosition({
    required int positionMs,
    String? deviceId,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.seekToPosition(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'position_ms': positionMs,
        'device_id': deviceId,
      },
    );
  }

  Future<PlaybackStateModel?> getPlaybackState({
    String? additionalTypes,
    String? market,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final playbackState = await _playerApiClient.getPlaybackState(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'market': market,
        'additional_types': additionalTypes,
      },
    );
    return playbackState;
  }

  Future<void> togglePlaybackShuffle({
    required bool state,
    String? deviceId,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.togglePlaybackShuffle(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'state': state,
        'device_id': deviceId,
      },
    );
  }

  Future<void> setPlaybackVolume({
    required int volumePercent,
    String? deviceId,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    await _playerApiClient.setPlaybackVolume(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'volume_percent': volumePercent,
        'device_id': deviceId,
      },
    );
  }
}
