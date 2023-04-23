import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/services/player_service.dart';

import 'package:spotify_client/ui/navigation/router.dart';

import 'package:spotify_client/ui/screens/main/local_entity/mini_player_local_model.dart';

enum Status { loading, active, inactive, error }

class MainRenderData {
  Status status = Status.loading;
  MiniPlayerLocalModel playerData = const MiniPlayerLocalModel(
    name: '',
    artists: '',
    image: '',
    progressMs: 10,
    durationMs: 100,
    isPlaying: false,
  );
}

class MainViewModel extends ChangeNotifier {
  MainViewModel() {
    loadDetails();
  }

  final data = MainRenderData();

  int selectedIndex = 0;
  final _playerService = PlayerService();

  void loadDetails() async {
    await _playerService
        .getPlaybackState()
        .then((value) => value == null
            ? data.status == Status.inactive
            : _addPlayerData(value))
        .onError((error, stackTrace) => data.status = Status.error);
    if (data.status != Status.error || data.status != Status.inactive) {
      data.status = Status.active;
    }
    notifyListeners();
  }

  void _addPlayerData(PlaybackStateModel model) {
    data.playerData = MiniPlayerLocalModel(
      name: model.item?.name,
      artists: model.item?.artists?.map((e) => e.name).toList().join(', '),
      image: model.item?.album?.images?.first.url,
      progressMs: model.item?.trackNumber?.toDouble(),
      durationMs: model.item?.durationMs?.toDouble(),
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
}
