import 'package:flutter/material.dart';

import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/services/player_service.dart';

enum Status { loading, completed, error }

class PlayerData {
  final String? name;
  final String? artist;
  final String? image;
  final int? progressMs;
  final int? durationMs;
  final int? timestamp;
  final bool? shuffleState;
  final bool? isPlaying;

  const PlayerData({
    required this.name,
    required this.artist,
    required this.image,
    required this.progressMs,
    required this.durationMs,
    required this.timestamp,
    required this.shuffleState,
    required this.isPlaying,
  });

  PlayerData copyWith({
    String? name,
    String? artist,
    String? image,
    int? progressMs,
    int? durationMs,
    int? timestamp,
    bool? shuffleState,
    bool? isPlaying,
  }) {
    return PlayerData(
      name: name ?? this.name,
      artist: artist ?? this.artist,
      image: image ?? this.image,
      progressMs: progressMs ?? this.progressMs,
      durationMs: durationMs ?? this.durationMs,
      timestamp: timestamp ?? this.timestamp,
      shuffleState: shuffleState ?? this.shuffleState,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}

class PlayerRenderedData {
  Status status = Status.loading;
  double positionMs = 0;
  PlayerData playerData = const PlayerData(
    name: '',
    artist: '',
    progressMs: 0,
    durationMs: 0,
    timestamp: 0,
    shuffleState: false,
    isPlaying: false,
    image: '',
  );
}

class PlayerViewModel extends ChangeNotifier {
  PlayerViewModel() {
    loadDetails();
  }

  final _playerService = PlayerService();
  final data = PlayerRenderedData();

  void loadDetails() async {
    await _playerService
        .getPlaybackState(market: 'ES', additionalTypes: 'track')
        .then((value) => _addPlayerData(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void skipToNext() async {
    await _playerService.skipToNext().then((value) => loadDetails());
  }

  void skipToPrevious() async {
    await _playerService.skipToPrevious().then((value) => loadDetails());
  }

  void togglePlaybackShuffle() async {
    bool shuffleState = data.playerData.shuffleState ?? true;
    await _playerService
        .togglePlaybackShuffle(state: !shuffleState, deviceId: null)
        .then(
          (value) => data.playerData.copyWith(shuffleState: !shuffleState),
        );
    loadDetails();
    notifyListeners();
  }

  void _addPlayerData(PlaybackStateModel playbackStateModel) {
    data.playerData = PlayerData(
      name: playbackStateModel.item?.name,
      artist: playbackStateModel.item?.artists?.map((e) => e.name).join(', '),
      image: playbackStateModel.item?.album?.images?.first.url,
      progressMs: playbackStateModel.progressMs,
      timestamp: playbackStateModel.timestamp,
      shuffleState: playbackStateModel.shuffleState,
      isPlaying: playbackStateModel.isPlaying,
      durationMs: playbackStateModel.item?.durationMs,
    );
    data.positionMs = playbackStateModel.progressMs?.toDouble() ?? 0;
  }


  void seekToPosition(double position) async {
    await _playerService.seekToPosition(positionMs: position.toInt());
    onChangePosition(position);
  }

  void onChangePosition(double position) {
    data.positionMs = position;
    notifyListeners();
  }
}
