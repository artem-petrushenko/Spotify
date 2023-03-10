import 'package:flutter/cupertino.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';

class MainViewModel extends ChangeNotifier {
  int selectedIndex = 0;
  final List<Widget> screens = [
    Text('1'),
    Text('2'),
    Text('3'),
    ScreenFactory().makeMediaLibrary(),
  ];

  void onItemTapped(int index) {
    if (selectedIndex == index) return;
    selectedIndex = index;
    notifyListeners();
  }
}
