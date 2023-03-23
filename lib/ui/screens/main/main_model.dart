import 'package:flutter/material.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';
import 'package:spotify_client/ui/navigation/main_navigation.dart';

class MainViewModel extends ChangeNotifier {
  int selectedIndex = 0;
  final List<Widget> screens = [
    const Scaffold(body: CustomScrollView(slivers: [SliverToBoxAdapter(child: Text('1'),)])),
    const Scaffold(body: CustomScrollView(slivers: [SliverToBoxAdapter(child: Text('2'),)])),
    const Scaffold(body: CustomScrollView(slivers: [SliverToBoxAdapter(child: Text('3'),)])),
    ScreenFactory().makeMediaLibrary(),
  ];

  void onItemTapped(int index) {
    if (selectedIndex == index) return;
    selectedIndex = index;
    notifyListeners();
  }

  void openPlayer(BuildContext context) {
    Navigator.of(context).pushNamed(MainNavigationRouteNames.playerScreen);
  }
}
