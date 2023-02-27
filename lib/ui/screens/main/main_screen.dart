import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/main/main_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.select((MainViewModel model) => model.selectedIndex);
    final screens = context.select((MainViewModel model) => model.screens);
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) =>
            context.read<MainViewModel>().onItemTapped(index),
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: '-',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.navigation),
            icon: Icon(Icons.navigation_outlined),
            label: '-',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border),
            label: '-',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_2),
            icon: Icon(Icons.person_2_outlined),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
