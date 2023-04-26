import 'package:spotify_client/domain/entity/player/available_devices.dart';
import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';
import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/entity/player/users_queue.dart';

abstract class AbstractPlayerService {
  Future<CurrentlyPlayingTrackModel> getCurrentlyPlayingTrack({
    String? additionalTypes,
    String? market,
  });

  Future<UsersQueueModel> getTheUsersQueue();

  Future<AvailableDevicesModel> getAvailableDevices();

  Future<void> transferPlayback({
    required List<String> deviceIds,
    bool? play,
  });

  Future<void> setRepeatMode({
    required String state,
    String? deviceId,
  });

  Future<void> pausePlayback({
    String? deviceId,
  });

  Future<void> startResumePlayback({
    String? deviceId,
    String? contextUri,
    List<String>? uris,
    Map<String, dynamic>? offset,
    int? positionMs,
  });

  Future<void> skipToNext({
    String? deviceId,
  });

  Future<void> skipToPrevious({
    String? deviceId,
  });

  Future<void> seekToPosition({
    required int positionMs,
    String? deviceId,
  });

  Future<PlaybackStateModel?> getPlaybackState({
    String? additionalTypes,
    String? market,
  });

  Future<void> togglePlaybackShuffle({
    required bool state,
    String? deviceId,
  });

  Future<void> setPlaybackVolume({
    required int volumePercent,
    String? deviceId,
  });

  Future<void> addItemToPlaybackQueue({
    required String uri,
    String? deviceId,
  });
}
