part of 'router.dart';

abstract class GoRouterPath {
  static const loaderScreen = GoRouterNames.loaderScreen;

  static const playerScreen = GoRouterNames.playerScreen;
  static const transferPlaybackScreen = GoRouterNames.transferPlaybackScreen;

  static const mediaLibraryScreen = GoRouterNames.mediaLibraryScreen;

  static const likedMusicPlaylistScreen =
      GoRouterNames.likedMusicPlaylistScreen;
  static const currentUserProfileScreen =
      GoRouterNames.currentUsersProfileScreen;
  static const settingScreen = GoRouterNames.settingScreen;
  static const musicPlaylistScreen = GoRouterNames.playlistScreen;
  static const localizationScreen = GoRouterNames.localizationScreen;
  static const themeScreen = GoRouterNames.themeScreen;
  static const usersQueueScreen = GoRouterNames.usersQueueScreen;

  static const artistScreen = '${GoRouterNames.artistScreen}/:artistID';
  static const albumScreen = '${GoRouterNames.albumScreen}/:albumID';
  static const playlistScreen = GoRouterNames.playlistScreen;
  static const trackScreen = GoRouterNames.trackScreen;

  // New Navigation
  static const loginView = GoRouterNames.loginView;
  static const profileView = GoRouterNames.profileView;
  static const homeView = GoRouterNames.homeView;
}
