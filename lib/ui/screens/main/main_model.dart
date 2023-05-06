import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/entity/player/playback_state.dart';

import 'package:spotify_client/domain/services/player/abstract_player_service.dart';

import 'package:spotify_client/config/router/router.dart';

import 'package:spotify_client/ui/screens/main/local_entity/mini_player_local_model.dart';

enum Status { loading, active, inactive, error }

class MainRenderData {
  Status status = Status.loading;
  MiniPlayerLocalModel playerData = const MiniPlayerLocalModel(
    name: '',
    artists: '',
    image: '',
    progressPercent: 0,
    isPlaying: false,
  );
}

class MainViewModel extends ChangeNotifier {
  MainViewModel() {
    loadDetails();
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  late final StreamSubscription<PlaybackStateModel?> subscription;
  final data = MainRenderData();
  int selectedIndex = 0;

  void loadDetails() async {
    subscription = _getPlaybackState().listen((value) {
      value == null ? data.status == Status.inactive : _addPlayerData(value);
      notifyListeners();
    });

    if (data.status != Status.error && data.status != Status.inactive) {
      data.status = Status.active;
    }
  }

  Stream<PlaybackStateModel?> _getPlaybackState() async* {
    while (true) {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      yield await GetIt.instance<AbstractPlayerService>().getPlaybackState();
    }
  }

  void _addPlayerData(PlaybackStateModel model) {
    data.playerData = MiniPlayerLocalModel(
      name: model.item?.name,
      artists: model.item?.artists?.map((e) => e.name).toList().join(', '),
      image: model.item?.album?.images?.first.url,
      progressPercent: (model.progressMs ?? 0) / (model.item?.durationMs ?? 1),
      isPlaying: model.isPlaying,
    );
  }

  void onItemTapped(int index, BuildContext context) {
    if (selectedIndex == index) return;
    switch (index) {
      case 0:
        context.go(GoRouterNames.homeScreen);
        break;
      case 1:
        context.go(GoRouterNames.searchScreen);
        break;
      case 2:
        context.go(GoRouterNames.mediaLibraryScreen);
        break;
    }
    selectedIndex = index;
    notifyListeners();
  }

  void openPlayer(BuildContext context) =>
      context.push(GoRouterNames.playerScreen);

  void openTransferPlayback(BuildContext context) =>
      context.push(GoRouterNames.transferPlaybackScreen);

  void pauseStartResumePlayback() async {
    data.playerData.isPlaying ?? false
        ? GetIt.instance<AbstractPlayerService>().pausePlayback()
        : GetIt.instance<AbstractPlayerService>().startResumePlayback();
    notifyListeners();
  }
}
