import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/configuration/api_query_constants.dart';

import 'package:spotify_client/domain/entity/player/currently_playing_track.dart';
import 'package:spotify_client/domain/services/player/abstract_player_service.dart';

import 'package:spotify_client/configuration/router/router.dart';

import 'package:spotify_client/ui/screens/player/local_entity/player_local_model.dart';

enum Status { loading, completed, error }

class PlayerRenderedData {
  Status status = Status.loading;
  PlayerLocalModel playerData = const PlayerLocalModel(
    name: '',
    artists: '',
    image: '',
    progressMs: null,
    durationMs: null,
    shuffleState: false,
    isPlaying: false,
    repeatState: '',
  );
}

class PlayerViewModel extends ChangeNotifier {
  PlayerViewModel() {
    loadDetails();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  final data = PlayerRenderedData();
  late StreamSubscription<CurrentlyPlayingTrackModel> subscription;

  Stream<CurrentlyPlayingTrackModel> _getCurrentlyPlayingTrack() async* {
    while (true) {
      const Duration(seconds: 1);
      yield await GetIt.instance<AbstractPlayerService>().getCurrentlyPlayingTrack();
    }
  }

  void loadDetails() async {
    final streamData = _getCurrentlyPlayingTrack();
    subscription = streamData.listen(
      (data) {
        _addPlayerData(data);
        notifyListeners();
      },
      onDone: () {},
      onError: (dynamic error) {
        data.status == Status.error;
      },
    );
    if (data.status != Status.error) {
      data.status = Status.completed;
    }
    notifyListeners();
  }

  void _addPlayerData(CurrentlyPlayingTrackModel model) {
    data.playerData = PlayerLocalModel(
      name: model.item?.name,
      artists: model.item?.artists?.map((e) => e.name).join(', '),
      image: model.item?.album?.images?.first.url,
      progressMs: model.progressMs?.toDouble(),
      shuffleState: model.shuffleState,
      isPlaying: model.isPlaying,
      durationMs: model.item?.durationMs?.toDouble(),
      repeatState: model.repeatState,
    );
  }

  void skipToNext() async {
    await GetIt.instance<AbstractPlayerService>().skipToNext();
    notifyListeners();
  }

  void skipToPrevious() async {
    await GetIt.instance<AbstractPlayerService>().skipToPrevious();
    notifyListeners();
  }

  void togglePlaybackShuffle() async {
    await GetIt.instance<AbstractPlayerService>().togglePlaybackShuffle(
        state: data.playerData.shuffleState ?? true);
    notifyListeners();
  }

  void seekToPosition(double position) async {
    await GetIt.instance<AbstractPlayerService>().seekToPosition(positionMs: position.toInt());
    onChangePosition(position);
  }

  void onChangePosition(double position) {
    data.playerData = data.playerData.copyWith(progressMs: position);
    notifyListeners();
  }

  void pauseStartResumePlayback() async {
    data.playerData.isPlaying ?? false
        ? GetIt.instance<AbstractPlayerService>().pausePlayback()
        : GetIt.instance<AbstractPlayerService>().startResumePlayback();
    notifyListeners();
  }

  void setRepeatMode() async {
    await GetIt.instance<AbstractPlayerService>().setRepeatMode(
      state:
          data.playerData.repeatState ?? ApiQueryConstants.repeatModeStateOff,
    );
    notifyListeners();
  }

  void openUsersQueue(BuildContext context) =>
      context.push(GoRouterNames.usersQueueScreen);

  void openTransferPlayback(BuildContext context) =>
      context.push(GoRouterNames.transferPlaybackScreen);

  void closedPlayer(BuildContext context) => context.pop();
}
