import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/presentation/bloc/bloc/artist/artist_bloc.dart';
import 'package:spotify_client/presentation/bloc/bloc/current_users_profile/current_users_profile_bloc.dart';

import 'package:spotify_client/presentation/bloc/bloc/login/login_bloc.dart';
import 'package:spotify_client/presentation/bloc/bloc/mini_player/mini_player_bloc.dart';
import 'package:spotify_client/presentation/bloc/bloc/player/player_bloc.dart';
import 'package:spotify_client/presentation/views/artist/artist_view.dart';
import 'package:spotify_client/presentation/views/current_users_profile/current_users_profile_view.dart';
import 'package:spotify_client/presentation/views/home/home_view.dart';
import 'package:spotify_client/presentation/views/localization/localization_view.dart';
import 'package:spotify_client/presentation/views/login/login_view.dart';
import 'package:spotify_client/presentation/views/main/main_view.dart';
import 'package:spotify_client/presentation/views/player/player_view.dart';
import 'package:spotify_client/presentation/views/theme/theme_view.dart';

import 'package:spotify_client/ui/screens/media_library/media_library_model.dart';
import 'package:spotify_client/ui/screens/media_library/media_library_screen.dart';

import 'package:spotify_client/ui/screens/playlist/playlist_screen.dart';
import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';

import 'package:spotify_client/ui/screens/settings/setting_model.dart';
import 'package:spotify_client/ui/screens/settings/settings_screen.dart';

import 'package:spotify_client/ui/screens/album/album_screen.dart';
import 'package:spotify_client/ui/screens/album/album_model.dart';

import 'package:spotify_client/ui/screens/loader/loader_model.dart';
import 'package:spotify_client/ui/screens/loader/loader_screen.dart';

import 'package:spotify_client/ui/screens/track/track_screen.dart';
import 'package:spotify_client/ui/screens/track/track_view_model.dart';

import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_screen.dart';
import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_view_model.dart';

import 'package:spotify_client/ui/screens/users_queue/users_queue_screen.dart';
import 'package:spotify_client/ui/screens/users_queue/users_queue_view_model.dart';

import 'package:spotify_client/presentation/bloc/cubits/home_cubit/home_cubit.dart';

import 'package:spotify_client/presentation/bloc/bloc/network/network_bloc.dart';

class ScreenFactory {
  Widget makeLogin(Map<String, String>? queryParameters) {
    if (queryParameters != null) {
      LoginBloc().add(HandlingLoginEvent(queryParameters: queryParameters));
    }
    return BlocProvider(
      create: (context) => LoginBloc(),
      lazy: false,
      child: const LoginView(),
    );
  }

  Widget makeMain(Widget child) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NetworkBloc()..add(NetworkObserve())),
        BlocProvider(
            create: (context) =>
                MiniPlayerBloc()..add(GetPlaybackStateEvent())),
      ],
      child: MainView(child),
    );
  }

  Widget makeMediaLibrary() {
    return ChangeNotifierProvider(
      create: (context) => MediaLibraryViewModel(),
      child: const MediaLibraryScreen(),
    );
  }

  Widget makeLoader() {
    return Provider(
      create: (context) => LoaderViewModel(context),
      lazy: false,
      child: const LoaderScreen(),
    );
  }

  Widget makeCurrentUserProfile() {
    return BlocProvider(
      create: (context) =>
          CurrentUsersProfileBloc()..add(FetchCurrentUsersProfile()),
      child: const CurrentUsersProfileView(),
    );
  }

  Widget makeAlbumScreen(String albumID) {
    return ChangeNotifierProvider(
      create: (context) => AlbumViewModel(albumID: albumID),
      child: const AlbumScreen(),
    );
  }

  Widget makeArtistScreen(String artistID) {
    return BlocProvider(
      create: (context) =>
          ArtistBloc()..add(LoadingArtistEvent(artistID: artistID)),
      child: const ArtistView(),
    );
  }

  Widget makeSettings() {
    return ChangeNotifierProvider(
      create: (context) => SettingViewModel(),
      child: const SettingsScreen(),
    );
  }

  Widget makeLocalization() {
    return const LocalizationView();
  }

  Widget makePlayer() {
    return BlocProvider(
      create: (context) => PlayerBloc()..add(GetCurrentPlayTrackEvent()),
      child: const PlayerView(),
    );
  }

  Widget makeTransferPlayback() {
    return ChangeNotifierProvider(
      create: (context) => TransferPlaybackViewModel(),
      child: const TransferPlaybackScreen(),
    );
  }

  Widget makeTheme() {
    return const ThemeView();
  }

  Widget makeUsersQueue() {
    return ChangeNotifierProvider(
      create: (context) => UsersQueueViewModel(),
      child: const UsersQueueScreen(),
    );
  }

  Widget makeTrack(String trackID, String image) {
    return ChangeNotifierProvider(
      create: (context) => TrackViewModel(trackID: trackID, image: image),
      child: const TrackScreen(),
    );
  }

  Widget makePlaylist(String playlistID, String image) {
    return ChangeNotifierProvider(
      create: (context) => PlaylistViewModel(
        playlistID: playlistID,
        image: image,
      ),
      child: const PlaylistScreen(),
    );
  }

  Widget makeHome() {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeView(),
    );
  }
}
