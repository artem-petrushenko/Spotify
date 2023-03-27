import 'package:flutter/material.dart';
import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';

import 'package:spotify_client/domain/services/player_service.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

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

  Stream<CurrentlyPlayingTrackModel> getCurrentlyPlayingTrack() async* {
    while (true) {
      Duration(seconds: 1);
      yield await _playerService.getCurrentlyPlayingTrack();
    }
  }

  void loadDetails() async {
    final streamData = getCurrentlyPlayingTrack();
    final subscription = streamData.listen(
      (data) {
        _addPlayerData(data);
        notifyListeners();
      },
      onDone: () {},
      onError: (dynamic error) {
        data.status == Status.error;
      },
      cancelOnError: true,
    );
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void openTransferPlayback(BuildContext context) => Navigator.of(context)
      .pushNamed(MainNavigationRouteNames.transferPlaybackScreen);

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

  void _addPlayerData(CurrentlyPlayingTrackModel model) {
    data.playerData = PlayerData(
      name: model.item?.name,
      artist: model.item?.artists?.map((e) => e.name).join(', '),
      image: model.item?.album?.images?.first.url,
      progressMs: model.progressMs,
      timestamp: model.timestamp,
      shuffleState: model.shuffleState,
      isPlaying: model.isPlaying,
      durationMs: model.item?.durationMs,
    );
  }

  void seekToPosition(double position) async {
    await _playerService.seekToPosition(positionMs: position.toInt());
    onChangePosition(position);
  }

  void onChangePosition(double position) {
    data.positionMs = position;
    notifyListeners();
  }

  void usersQueue(BuildContext context) => Navigator.of(context)
      .pushNamed(MainNavigationRouteNames.usersQueueScreen);
}
