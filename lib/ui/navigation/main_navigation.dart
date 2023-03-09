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
  static const artistScreen = '/artist';
  static const localizationScreen = '/localization';
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
    MainNavigationRouteNames.localizationScreen: (_) =>
        _screenFactory.makeLocalization(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name ?? '');
    if (uri.path == '/auth') {
      return MaterialPageRoute(
        builder: (_) => _screenFactory.makeSignIn(uri.queryParameters),
      );
    }
    switch (settings.name) {
      case MainNavigationRouteNames.albumScreen:
        final arguments = settings.arguments;
        final albumId = arguments is String ? arguments : '';
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeAlbumScreen(albumId),
        );
      case MainNavigationRouteNames.artistScreen:
        final arguments = settings.arguments;
        final artistId = arguments is String ? arguments : '';
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeArtistScreen(artistId),
        );
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
