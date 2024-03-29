import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/presentation/bloc/bloc/artist/artist_bloc.dart';

import 'package:spotify_client/presentation/bloc/bloc/player/player_bloc.dart';
import 'package:spotify_client/presentation/views/artist/artist_view.dart';
import 'package:spotify_client/presentation/views/localization/localization_view.dart';
import 'package:spotify_client/presentation/views/player/player_view.dart';
import 'package:spotify_client/presentation/views/theme/theme_view.dart';
import 'package:spotify_client/src/feature/authentication/bloc/login/authentication_bloc.dart';

import 'package:spotify_client/ui/screens/media_library/media_library_model.dart';
import 'package:spotify_client/ui/screens/media_library/media_library_screen.dart';

import 'package:spotify_client/ui/screens/playlist/playlist_screen.dart';
import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';

import 'package:spotify_client/ui/screens/settings/setting_model.dart';
import 'package:spotify_client/ui/screens/settings/settings_screen.dart';

import 'package:spotify_client/ui/screens/album/album_screen.dart';
import 'package:spotify_client/ui/screens/album/album_model.dart';

import 'package:spotify_client/ui/screens/track/track_screen.dart';
import 'package:spotify_client/ui/screens/track/track_view_model.dart';

import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_screen.dart';
import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_view_model.dart';

import 'package:spotify_client/ui/screens/users_queue/users_queue_screen.dart';
import 'package:spotify_client/ui/screens/users_queue/users_queue_view_model.dart';


import 'package:spotify_client/src/feature/authentication/widget/login_view.dart';

class ScreenFactory {
  Widget makeLogin(
    Map<String, String>? queryParameters,
    BuildContext context,
  ) {
    if (queryParameters != null && queryParameters.isNotEmpty) {
      context.read<AuthenticationBloc>().add(
          AuthenticationEvent.handleDeeplink(queryParameters: queryParameters));
    }
    return const LoginView();
  }


  Widget makeMediaLibrary() {
    return ChangeNotifierProvider(
      create: (context) => MediaLibraryViewModel(),
      child: const MediaLibraryScreen(),
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


}
