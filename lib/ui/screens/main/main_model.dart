import 'package:flutter/material.dart';

import 'package:spotify_client/domain/entity/player/playback_state.dart';
import 'package:spotify_client/domain/factory/screen_factory.dart';
import 'package:spotify_client/domain/services/player_service.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';
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
  final List<Widget> screens = [
    const Scaffold(
        body:
            CustomScrollView(slivers: [SliverToBoxAdapter(child: Text('1'))])),
    const Scaffold(
        body:
            CustomScrollView(slivers: [SliverToBoxAdapter(child: Text('2'))])),
    const Scaffold(
        body:
            CustomScrollView(slivers: [SliverToBoxAdapter(child: Text('3'))])),
    ScreenFactory().makeMediaLibrary(),
  ];

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

  void onItemTapped(int index) {
    if (selectedIndex == index) return;
    selectedIndex = index;
    notifyListeners();
  }

  void openPlayer(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.playerScreen);
  }
}
