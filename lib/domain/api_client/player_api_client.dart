import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';

class PlayerApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<AvailableDevicesModel> getAvailableDevices({
    required String accessToken,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/me/player/devices',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return AvailableDevicesModel.fromJson(response);
  }

  Future<void> transferPlayback({
    required String accessToken,
    Map<String, dynamic>? body,
  }) async {
    await _apiQueryHelper.put(
      endpoint: '/v1/me/player',
      accessToken: accessToken,
      body: body,
    );
  }

  Future<void> startResumePlayback({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    await _apiQueryHelper.put(
      endpoint: '/v1/me/player/play',
      accessToken: accessToken,
      queryParameters: queryParameters,
      body: body,
    );
  }

  Future<void> skipToNext({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    await _apiQueryHelper.post(
      endpoint: '/v1/me/player/next',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  Future<void> skipToPrevious({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    await _apiQueryHelper.post(
      endpoint: '/v1/me/player/previous',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  Future<void> seekToPosition({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    await _apiQueryHelper.put(
      endpoint: '/v1/me/player/seek',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  Future<PlaybackStateModel> getPlaybackState({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _apiQueryHelper.get(
      endpoint: '/v1/me/player',
      queryParameters: queryParameters,
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return PlaybackStateModel.fromJson(response);
  }

  Future<void> togglePlaybackShuffle({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    await _apiQueryHelper.put(
      endpoint: '/v1/me/player/shuffle',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  Future<void> setPlaybackVolume({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    await _apiQueryHelper.put(
      endpoint: '/v1/me/player/volume',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }
}
