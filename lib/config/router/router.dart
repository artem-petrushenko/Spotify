import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';
import 'package:spotify_client/src/feature/initialization/widget/dependency_scope.dart';
import 'package:spotify_client/src/feature/liked_songs/bloc/liked_songs_bloc.dart';
import 'package:spotify_client/src/feature/liked_songs/widget/liked_songs_view.dart';
import 'package:spotify_client/ui/animations/navigation_animations.dart';

part 'router_names.dart';

part 'router_path.dart';

class MainGoRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final _screenFactory = ScreenFactory();
  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: GoRouterPath.loaderScreen,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) =>
            NavigationAnimations.fadeTransitionAnimation<void>(
          context: context,
          state: state,
          child: _screenFactory.makeMain(child),
        ),
        routes: <RouteBase>[
          GoRoute(
            path: GoRouterPath.homeScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeHome(),
            ),
          ),
          GoRoute(
            path: GoRouterPath.searchScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeSearch(),
            ),
          ),
          GoRoute(
            path: GoRouterPath.mediaLibraryScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeMediaLibrary(),
            ),
          ),
          GoRoute(
            path: GoRouterPath.albumScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeAlbumScreen(
                state.params['albumID'] ?? '',
              ),
            ),
          ),
          GoRoute(
            path: GoRouterPath.artistScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeArtistScreen(
                state.params['artistID'] ?? '',
              ),
            ),
          ),
          GoRoute(
            path: GoRouterPath.currentUserProfileScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeCurrentUserProfile(),
            ),
          ),
          GoRoute(
            path: GoRouterPath.settingScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeSettings(),
            ),
          ),
          GoRoute(
            path: GoRouterPath.localizationScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeLocalization(),
            ),
          ),
          GoRoute(
            path: GoRouterPath.themeScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeTheme(),
            ),
          ),
          GoRoute(
            path: GoRouterPath.likedMusicPlaylistScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: BlocProvider(
                create: (BuildContext _) => LikedSongsBloc(
                  likedSongsRepository:
                      DependenciesScope.of(context).likedSongsRepository,
                  authRepository: DependenciesScope.of(context).authRepository,
                )..add(const LikedSongsEvent.fetchLikedSongs()),
                child: const LikedSongsView(),
              ),
            ),
          ),
          GoRoute(
            name: GoRouterNames.playlistScreen,
            path: GoRouterPath.playlistScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makePlaylist(
                  state.queryParams['playlistID'] ?? '',
                  state.queryParams['image'] ?? ''),
            ),
          ),
          GoRoute(
            name: GoRouterNames.trackScreen,
            path: GoRouterPath.trackScreen,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: _screenFactory.makeTrack(
                state.queryParams['trackID'] ?? '',
                state.queryParams['image'] ?? '',
              ),
            ),
          ),
        ],
      ),
      GoRoute(
        path: GoRouterPath.loaderScreen,
        pageBuilder: (context, state) =>
            NavigationAnimations.fadeTransitionAnimation<void>(
          context: context,
          state: state,
          child: _screenFactory.makeLoader(),
        ),
      ),
      GoRoute(
        path: GoRouterPath.onBoardingScreen,
        pageBuilder: (context, state) =>
            NavigationAnimations.fadeTransitionAnimation<void>(
          context: context,
          state: state,
          child: _screenFactory.makeOnBoarding(),
        ),
      ),
      GoRoute(
        path: GoRouterPath.loginScreen,
        pageBuilder: (context, state) =>
            NavigationAnimations.fadeTransitionAnimation<void>(
          context: context,
          state: state,
          child: _screenFactory.makeLogin(state.queryParams),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: GoRouterPath.playerScreen,
        pageBuilder: (context, state) =>
            NavigationAnimations.popUpSlideTransition<void>(
          context: context,
          state: state,
          child: _screenFactory.makePlayer(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: GoRouterPath.transferPlaybackScreen,
        pageBuilder: (context, state) =>
            NavigationAnimations.fadeTransitionAnimation<void>(
          context: context,
          state: state,
          child: _screenFactory.makeTransferPlayback(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: GoRouterPath.usersQueueScreen,
        pageBuilder: (context, state) =>
            NavigationAnimations.fadeTransitionAnimation<void>(
          context: context,
          state: state,
          child: _screenFactory.makeUsersQueue(),
        ),
      ),
    ],
  );
}
