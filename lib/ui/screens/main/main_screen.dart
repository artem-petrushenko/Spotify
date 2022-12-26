import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';
import 'package:spotify_client/ui/screens/main/main_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _screenFactory = ScreenFactory();
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    if (_selectedIndex == index) return;

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _screenFactory.makeHome(),
          _screenFactory.makeNavigation(),
          _screenFactory.makeLiked(),
          _screenFactory.makeUser(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (index) => onItemTapped(index),
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/vectors/home_on.svg')
                : SvgPicture.asset('assets/vectors/home_off.svg'),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/vectors/navigation_on.svg')
                : SvgPicture.asset('assets/vectors/navigation_off.svg'),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/vectors/liked_on.svg')
                : SvgPicture.asset('assets/vectors/liked_off.svg'),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/vectors/user_on.svg')
                : SvgPicture.asset('assets/vectors/user_off.svg'),
            label: 'News',
          ),
        ],
      ),
    );
  }
}
