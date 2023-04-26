import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';
import 'package:spotify_client/domain/entity/player/available_devices.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/entity/player/users_queue.dart';

abstract class AbstractPlayerRepository {
  Future<CurrentlyPlayingTrackModel> getCurrentlyPlayingTrack({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<UsersQueueModel> getTheUsersQueue({
    required String accessToken,
  });

  Future<AvailableDevicesModel> getAvailableDevices({
    required String accessToken,
  });

  Future<void> transferPlayback({
    required String accessToken,
    Map<String, dynamic>? body,
  });

  Future<void> setRepeatMode({
    required String accessToken,
    required Map<String, dynamic>? queryParameters,
  });

  Future<void> pausePlayback({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<void> startResumePlayback({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });

  Future<void> skipToNext({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<void> skipToPrevious({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<void> seekToPosition({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });

  Future<PlaybackStateModel?> getPlaybackState({
    required String accessToken,
    Map<String, dynamic>? queryParameters,
  });

  Future<void> togglePlaybackShuffle({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });

  Future<void> setPlaybackVolume({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });

  Future<void> addItemToPlaybackQueue({
    required String accessToken,
    required Map<String, dynamic> queryParameters,
  });
}
