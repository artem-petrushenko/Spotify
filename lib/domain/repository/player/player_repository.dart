import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/player/abstract_player_repository.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';
import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/entity/player/users_queue.dart';

class PlayerRepository implements AbstractPlayerRepository {
  @override
  Future<CurrentlyPlayingTrackModel> getCurrentlyPlayingTrack({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/player/currently-playing',
      accessToken: accessToken,
      queryParameters: queryParameters,
    ) as Map<String, dynamic>;
    return CurrentlyPlayingTrackModel.fromJson(response);
  }

  @override
  Future<UsersQueueModel> getTheUsersQueue({
    required String accessToken,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/player/queue',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return UsersQueueModel.fromJson(response);
  }

  @override
  Future<AvailableDevicesModel> getAvailableDevices({
    required String accessToken,
  }) async {
    final response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/player/devices',
      accessToken: accessToken,
    ) as Map<String, dynamic>;
    return AvailableDevicesModel.fromJson(response);
  }

  @override
  Future<void> transferPlayback({
    required String accessToken,
    Map<String, dynamic>? body,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/player',
      accessToken: accessToken,
      body: body,
    );
  }

  @override
  Future<void> setRepeatMode({
    required String accessToken,
    required Map<String, dynamic>? queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/player/repeat',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<void> pausePlayback({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/player/pause',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<void> startResumePlayback({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/player/play',
      accessToken: accessToken,
      queryParameters: queryParameters,
      body: body,
    );
  }

  @override
  Future<void> skipToNext({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().post(
      endpoint: '/v1/me/player/next',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<void> skipToPrevious({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().post(
      endpoint: '/v1/me/player/previous',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<void> seekToPosition({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/player/seek',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<PlaybackStateModel?> getPlaybackState({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    dynamic response = await GetIt.instance<ApiQueryHelper>().get(
      endpoint: '/v1/me/player',
      queryParameters: queryParameters,
      accessToken: accessToken,
    );
    if (response.runtimeType == bool) {
      return null;
    } else {
      return PlaybackStateModel.fromJson(response as Map<String, dynamic>);
    }
  }

  @override
  Future<void> togglePlaybackShuffle({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/player/shuffle',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<void> setPlaybackVolume({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().put(
      endpoint: '/v1/me/player/volume',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }

  @override
  Future<void> addItemToPlaybackQueue({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  }) async {
    await GetIt.instance<ApiQueryHelper>().post(
      endpoint: '/v1/me/player/queue',
      accessToken: accessToken,
      queryParameters: queryParameters,
    );
  }
}
