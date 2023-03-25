import 'package:flutter/material.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';
import 'package:spotify_client/domain/services/player_service.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class MainViewModel extends ChangeNotifier {
  MainViewModel() {
    getPlaybackState();
  }

  int selectedIndex = 0;
  bool isPlaybackState = false;
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

  void getPlaybackState() async {
    await _playerService
        .getPlaybackState()
        .then((value) => isPlaybackState = value == null ? false : true);
    notifyListeners();
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
