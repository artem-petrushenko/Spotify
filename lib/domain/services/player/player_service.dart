import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/player/abstract_player_repository.dart';

import 'package:spotify_client/domain/services/player/abstract_player_service.dart';

import 'package:spotify_client/domain/entity/player/available_devices.dart';
import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/entity/player/users_queue.dart';

import 'package:spotify_client/domain/repository/session_data/abstract_session_data_repository.dart';

import '../../../utils/constants/strings.dart';

class PlayerService implements AbstractPlayerService {
  @override
  Future<CurrentlyPlayingTrackModel> getCurrentlyPlayingTrack({
    String? additionalTypes,
    String? market,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final currentlyPlayingTrack =
        await GetIt.instance<AbstractPlayerRepository>()
            .getCurrentlyPlayingTrack(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'additional_types': additionalTypes,
        'market': market,
      },
    );
    return currentlyPlayingTrack;
  }

  @override
  Future<UsersQueueModel> getTheUsersQueue() async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final usersQueue =
        await GetIt.instance<AbstractPlayerRepository>().getTheUsersQueue(
      accessToken: accessToken ?? '',
    );
    return usersQueue;
  }

  @override
  Future<AvailableDevicesModel> getAvailableDevices() async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final availableDevices =
        await GetIt.instance<AbstractPlayerRepository>().getAvailableDevices(
      accessToken: accessToken ?? '',
    );
    return availableDevices;
  }

  @override
  Future<void> transferPlayback({
    required List<String> deviceIds,
    bool? play,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().transferPlayback(
      accessToken: accessToken ?? '',
      body: <String, dynamic>{
        'device_ids': deviceIds,
        'play': play,
      },
    );
  }

  @override
  Future<void> setRepeatMode({
    required String state,
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final nextState = _getNextRepeatModeState(state);
    await GetIt.instance<AbstractPlayerRepository>().setRepeatMode(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'state': nextState,
        'device_id': deviceId,
      },
    );
  }

  String _getNextRepeatModeState(String currentState) {
    switch (currentState) {
      case repeatModeStateContext:
        return repeatModeStateTrack;
      case repeatModeStateTrack:
        return repeatModeStateOff;
      case repeatModeStateOff:
        return repeatModeStateContext;
      default:
        return repeatModeStateOff;
    }
  }

  @override
  Future<void> pausePlayback({
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().pausePlayback(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'device_id': deviceId,
      },
    );
  }

  @override
  Future<void> startResumePlayback({
    String? deviceId,
    String? contextUri,
    List<String>? uris,
    Map<String, dynamic>? offset,
    int? positionMs,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().startResumePlayback(
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

  @override
  Future<void> skipToNext({
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().skipToNext(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'device_id': deviceId,
      },
    );
  }

  @override
  Future<void> skipToPrevious({
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().skipToPrevious(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'device_id': deviceId,
      },
    );
  }

  @override
  Future<void> seekToPosition({
    required int positionMs,
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().seekToPosition(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'position_ms': positionMs,
        'device_id': deviceId,
      },
    );
  }

  @override
  Future<PlaybackStateModel?> getPlaybackState({
    String? additionalTypes,
    String? market,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    final playbackState =
        await GetIt.instance<AbstractPlayerRepository>().getPlaybackState(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'market': market,
        'additional_types': additionalTypes,
      },
    );
    return playbackState;
  }

  @override
  Future<void> togglePlaybackShuffle({
    required bool state,
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().togglePlaybackShuffle(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'state': state,
        'device_id': deviceId,
      },
    );
  }

  @override
  Future<void> setPlaybackVolume({
    required int volumePercent,
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().setPlaybackVolume(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'volume_percent': volumePercent,
        'device_id': deviceId,
      },
    );
  }

  @override
  Future<void> addItemToPlaybackQueue({
    required String uri,
    String? deviceId,
  }) async {
    final accessToken =
        await GetIt.instance<AbstractSessionDataRepository>().getAccessToken();
    await GetIt.instance<AbstractPlayerRepository>().addItemToPlaybackQueue(
      accessToken: accessToken ?? '',
      queryParameters: <String, dynamic>{
        'uri': uri,
        'device_id': deviceId,
      },
    );
  }
}
