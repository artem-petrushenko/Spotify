import 'package:flutter/material.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';

import 'package:spotify_client/ui/screens/navigation_error/navigation_error_screen.dart';

abstract class MainNavigationRouteNames {
  static const mainScreen = '/main';
  static const signInScreen = '/login_selection/sign_in';
  static const loginSelectionScreen = '/login_selection';

  //TODO In Work
  static const loadingScreen = '/';
  static const getStartedScreen = '/get_started';
  static const chooseModeScreen = '/get_started/choose_mode';
  static const musicScreen = '/music';
  static const lyricsScreen = '/lyrics';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.mainScreen: (_) => _screenFactory.makeMain(),
    MainNavigationRouteNames.signInScreen: (_) => _screenFactory.makeSignIn(),
    MainNavigationRouteNames.loginSelectionScreen: (_) =>
        _screenFactory.makeLoginSelection(),
    MainNavigationRouteNames.loadingScreen: (_) => _screenFactory.makeLoading(),
    MainNavigationRouteNames.getStartedScreen: (_) =>
        _screenFactory.makeGetStarted(),
    MainNavigationRouteNames.chooseModeScreen: (_) =>
        _screenFactory.makeChooseMode(),
    MainNavigationRouteNames.musicScreen: (_) => _screenFactory.makeMusic(),
    MainNavigationRouteNames.lyricsScreen: (_) => _screenFactory.makeLyrics(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(
          builder: (_) => const NavigationErrorScreen(),
        );
    }
  }
}
