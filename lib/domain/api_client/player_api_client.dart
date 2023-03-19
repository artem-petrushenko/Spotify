import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';

class PlayerApiClient {
  final _apiQueryHelper = ApiQueryHelper();

  Future<AvailableDevicesModel> getAvailableDevices({
    required String accessToken,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/player/devices',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return AvailableDevicesModel.fromJson(response);
  }

  Future<void> skipToNext({
    required String accessToken,
    required Map<String, dynamic>? body,
    required Map<String, dynamic>? queryParameters,
  }) async {
    await _apiQueryHelper.post(
      url: '/v1/me/player/next',
      accessToken: accessToken,
      body: body,
      queryParameters: queryParameters,
    );
  }

  Future<void> skipToPrevious({
    required String accessToken,
    required Map<String, dynamic>? body,
    required Map<String, dynamic>? queryParameters,
  }) async {
    await _apiQueryHelper.post(
      url: '/v1/me/player/previous',
      accessToken: accessToken,
      body: body,
      queryParameters: queryParameters,
    );
  }

  Future<PlaybackStateModel> getPlaybackState({
    required String accessToken,
    required String additionalTypes,
    required String market,
  }) async {
    final response = await _apiQueryHelper.get(
      url: '/v1/me/player'
          '?market=$market'
          '&additional_types=$additionalTypes',
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
}
