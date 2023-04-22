import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';

abstract class GoRoutePath {
  static const loaderScreen = '/';
  static const onBoardingScreen = '/onBoarding';
  static const signInScreen = '/auth';

  static const playerScreen = '/player';
  static const transferPlaybackScreen = '/transferPlayback';

  static const mediaLibraryScreen = '/mediaLibrary';
  static const homeScreen = '/home';
  static const likedMusicPlaylistScreen = '/likedMusicPlaylist';
  static const userProfileScreen = '/userProfile';
  static const settingScreen = '/settings';
  static const musicPlaylistScreen = '/musicPlaylist';
  static const localizationScreen = '/localization';
  static const themeScreen = '/theme';
  static const usersQueueScreen = '/usersQueue';
  static const searchScreen = '/search';

  static const artistScreen = '/artist/:artistId';
  static const albumScreen = '/album/:albumId';
  static const playlistScreen = '/playlist/:playlistID';
  static const trackScreen = '/track/:trackID';
}

class MainGoRouter {
  static final _screenFactory = ScreenFactory();
  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: GoRoutePath.loaderScreen,
    routes: [
      ShellRoute(
        builder: (context, state, child) => _screenFactory.makeMain(child),
        routes: <RouteBase>[
          GoRoute(
            path: GoRoutePath.homeScreen,
            builder: (context, state) => _screenFactory.makeHome(),
          ),
          GoRoute(
              path: GoRoutePath.searchScreen,
              builder: (context, state) => _screenFactory.makeSearch()),
          GoRoute(
            path: GoRoutePath.mediaLibraryScreen,
            builder: (context, state) => _screenFactory.makeMediaLibrary(),
          ),
          GoRoute(
            path: GoRoutePath.albumScreen,
            builder: (context, state) => _screenFactory.makeAlbumScreen(
              state.params['albumId'] ?? '',
            ),
          ),
          GoRoute(
            path: GoRoutePath.artistScreen,
            builder: (context, state) => _screenFactory.makeArtistScreen(
              state.params['artistId'] ?? '',
            ),
          ),
          GoRoute(
            path: GoRoutePath.userProfileScreen,
            builder: (context, state) => _screenFactory.makeUserProfile(),
          ),
          GoRoute(
            path: GoRoutePath.settingScreen,
            builder: (context, state) => _screenFactory.makeSettings(),
          ),
          GoRoute(
            path: GoRoutePath.localizationScreen,
            builder: (context, state) => _screenFactory.makeLocalization(),
          ),
          GoRoute(
            path: GoRoutePath.themeScreen,
            builder: (context, state) => _screenFactory.makeTheme(),
          ),
          GoRoute(
            path: GoRoutePath.likedMusicPlaylistScreen,
            builder: (context, state) =>
                _screenFactory.makeLikedMusicPlaylist(),
          ),
          GoRoute(
            path: GoRoutePath.playlistScreen,
            builder: (context, state) => _screenFactory.makePlaylist(
              state.params['playlistID'] ?? '',
            ),
          ),
          GoRoute(
            path: GoRoutePath.trackScreen,
            builder: (context, state) => _screenFactory.makeTrack(
              state.params['trackID'] ?? '',
            ),
          ),
        ],
      ),
      GoRoute(
        path: GoRoutePath.loaderScreen,
        builder: (context, state) => _screenFactory.makeLoader(),
      ),
      GoRoute(
        path: GoRoutePath.onBoardingScreen,
        builder: (context, state) => _screenFactory.makeOnBoarding(),
      ),
      GoRoute(
          path: GoRoutePath.signInScreen,
          builder: (context, state) =>
              _screenFactory.makeSignIn(state.queryParams)),
      GoRoute(
        path: GoRoutePath.playerScreen,
        builder: (context, state) => _screenFactory.makePlayer(),
      ),
    ],
  );
}
