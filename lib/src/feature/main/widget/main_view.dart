import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:spotify_client/config/router/router.dart';

class MainView extends StatelessWidget {
  const MainView(
    this.child, {
    Key? key,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          NavigationBar(
            onDestinationSelected: (int index) {
              switch (index) {
                case 0:
                  context.go(GoRouterPath.homeView);
                case 1:
                  context.go(GoRouterPath.likedMusicPlaylistScreen);
              }
            },
            selectedIndex: 0,
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person_2),
                icon: Icon(Icons.person_2_outlined),
                label: 'Your Library',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
