import 'package:spotify_client/domain/api_client/player_api_client.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';

class PlayerService {
  final _sessionDataProvider = SessionDataProvider();
  final _playerApiClient = PlayerApiClient();

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

  Future<PlaybackStateModel> getPlaybackState({
    String? additionalTypes,
    String? market,
  }) async {
    final accessToken = await _sessionDataProvider.getAccessToken();
    final availableDevices = await _playerApiClient.getPlaybackState(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'market': market,
        'additional_types': additionalTypes,
      },
    );
    return availableDevices;
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
}
