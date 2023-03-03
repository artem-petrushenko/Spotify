import 'package:flutter/material.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';

import 'package:spotify_client/ui/screens/navigation_error/navigation_error_screen.dart';

abstract class MainNavigationRouteNames {
  static const loaderScreen = '/';
  static const onBoardingScreen = '/on_boarding';
  static const signInScreen = '/sign_in';
  static const likedMusicPlaylistScreen = '/liked_music_playlist';
  static const userProfileScreen = '/user_profile';
  static const settingScreen = '/settings';
  static const mainScreen = '/main';
  static const musicPlaylistScreen = '/music_playlist';
  static const albumScreen = '/album';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.loaderScreen: (_) => _screenFactory.makeLoader(),
    MainNavigationRouteNames.onBoardingScreen: (_) =>
        _screenFactory.makeOnBoarding(),
    MainNavigationRouteNames.mainScreen: (_) => _screenFactory.makeMain(),
    MainNavigationRouteNames.signInScreen: (_) =>
        _screenFactory.makeSignIn(null),
    MainNavigationRouteNames.likedMusicPlaylistScreen: (_) =>
        _screenFactory.makeLikedMusicPlaylist(),
    MainNavigationRouteNames.settingScreen: (_) =>
        _screenFactory.makeSettings(),
    MainNavigationRouteNames.userProfileScreen: (_) =>
        _screenFactory.makeUserProfile(),
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
