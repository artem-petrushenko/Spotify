import 'package:flutter/material.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';

import 'package:spotify_client/ui/screens/navigation_error/navigation_error_screen.dart';

abstract class MainNavigationRouteNames {
  static const mainScreen = '/main';
  static const signInScreen = '/login_selection/sign_in';
  static const loginSelectionScreen = '/login_selection';

  //TODO In Work
  static const loaderScreen = '/';
  static const getStartedScreen = '/get_started';
  static const chooseModeScreen = '/get_started/choose_mode';
  static const musicScreen = '/music';
  static const lyricsScreen = '/lyrics';
  static const userProfileScreen = '/user_profile';
  static const musicPlaylistScreen = '/music_playlist';
  static const albumScreen = '/album';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.mainScreen: (_) => _screenFactory.makeMain(),
    MainNavigationRouteNames.signInScreen: (_) =>
        _screenFactory.makeSignIn(null),
    MainNavigationRouteNames.loginSelectionScreen: (_) =>
        _screenFactory.makeLoginSelection(),
    MainNavigationRouteNames.loaderScreen: (_) => _screenFactory.makeLoader(),
    MainNavigationRouteNames.getStartedScreen: (_) =>
        _screenFactory.makeGetStarted(),
    MainNavigationRouteNames.chooseModeScreen: (_) =>
        _screenFactory.makeChooseMode(),
    MainNavigationRouteNames.musicScreen: (_) => _screenFactory.makeMusic(),
    MainNavigationRouteNames.lyricsScreen: (_) => _screenFactory.makeLyrics(),
    MainNavigationRouteNames.userProfileScreen: (_) =>
        _screenFactory.makeUserProfile(),
    MainNavigationRouteNames.musicPlaylistScreen: (_) =>
        _screenFactory.makeMusicPlaylist(),
    MainNavigationRouteNames.albumScreen: (_) =>
        _screenFactory.makeAlbumScreen(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name ?? '');
    if (uri.path == '/auth') {
      return MaterialPageRoute(
        builder: (_) => _screenFactory.makeSignIn(uri.queryParameters),
      );
    }
    switch (settings.name) {
      default:
        return MaterialPageRoute(
          builder: (_) => const NavigationErrorScreen(),
        );
    }
  }

  static void resetNavigation(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      MainNavigationRouteNames.loaderScreen,
      (route) => false,
    );
  }
}
