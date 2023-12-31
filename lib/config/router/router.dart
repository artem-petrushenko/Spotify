import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:spotify_client/domain/factory/screen_factory.dart';
import 'package:spotify_client/src/feature/home/widget/home_view.dart';
import 'package:spotify_client/src/feature/initialization/widget/dependency_scope.dart';
import 'package:spotify_client/src/feature/liked_songs/bloc/liked_songs_bloc.dart';
import 'package:spotify_client/src/feature/liked_songs/widget/liked_songs_view.dart';
import 'package:spotify_client/src/feature/main/widget/main_view.dart';
import 'package:spotify_client/src/feature/profile/widget/profile_view.dart';
import 'package:spotify_client/ui/animations/navigation_animations.dart';

part 'router_names.dart';

part 'router_path.dart';

class MainGoRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  // TODO: Rewrite Navigation Logic for Check Auth State
  static final _screenFactory = ScreenFactory();
  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) {
      final isAuth = DependenciesScope.of(context)
          .authenticationRepository
          .fetchAccessToken();
      if (isAuth == null) {
        if (state.uri.queryParameters.isNotEmpty) {
          return state.uri.toString();
        }
        return GoRouterPath.loginView;
      }
      return null;
    },
    initialLocation: GoRouterPath.homeView,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) =>
            NavigationAnimations.fadeTransitionAnimation<void>(
          context: context,
          state: state,
          child: MainView(child),
        ),
        routes: <RouteBase>[
          GoRoute(
            path: GoRouterPath.homeView,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: const HomeView(),
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
                state.uri.queryParameters['albumID'] ?? '',
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
                state.uri.queryParameters['artistID'] ?? '',
              ),
            ),
          ),
          GoRoute(
            path: GoRouterPath.profileView,
            pageBuilder: (context, state) =>
                NavigationAnimations.fadeTransitionAnimation<void>(
              context: context,
              state: state,
              child: const ProfileView(),
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
                create: (_) => LikedSongsBloc(
                  likedSongsRepository:
                      DependenciesScope.of(context).likedSongsRepository,
                  authenticationRepository:
                      DependenciesScope.of(context).authenticationRepository,
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
                  state.uri.queryParameters['playlistID'] ?? '',
                  state.uri.queryParameters['image'] ?? ''),
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
                state.uri.queryParameters['trackID'] ?? '',
                state.uri.queryParameters['image'] ?? '',
              ),
            ),
          ),
        ],
      ),
      GoRoute(
        path: GoRouterPath.loginView,
        pageBuilder: (context, state) {
          return NavigationAnimations.fadeTransitionAnimation<void>(
            context: context,
            state: state,
            child: _screenFactory.makeLogin(state.uri.queryParameters, context),
          );
        },
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
