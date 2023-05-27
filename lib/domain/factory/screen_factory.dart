import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/presentation/bloc/bloc/mini_player/mini_player_bloc.dart';
import 'package:spotify_client/presentation/bloc/bloc/player/player_bloc.dart';
import 'package:spotify_client/presentation/views/home/home_view.dart';
import 'package:spotify_client/presentation/views/main/main_view.dart';
import 'package:spotify_client/presentation/views/player/player_view.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';
import 'package:spotify_client/ui/screens/artist/artist_screen.dart';

import 'package:spotify_client/ui/screens/language/localization_screen.dart';

import 'package:spotify_client/ui/screens/media_library/media_library_model.dart';
import 'package:spotify_client/ui/screens/media_library/media_library_screen.dart';

import 'package:spotify_client/ui/screens/on_boarding/on_boarding_model.dart';
import 'package:spotify_client/ui/screens/on_boarding/on_boarding_screen.dart';

import 'package:spotify_client/ui/screens/playlist/playlist_screen.dart';
import 'package:spotify_client/ui/screens/playlist/playlist_view_model.dart';

import 'package:spotify_client/ui/screens/search/search_screen.dart';
import 'package:spotify_client/ui/screens/search/search_view_model.dart';

import 'package:spotify_client/ui/screens/settings/setting_model.dart';
import 'package:spotify_client/ui/screens/settings/settings_screen.dart';

import 'package:spotify_client/ui/screens/sign_in/sign_in_model.dart';
import 'package:spotify_client/ui/screens/sign_in/sign_in_screen.dart';

import 'package:spotify_client/ui/screens/album/album_screen.dart';
import 'package:spotify_client/ui/screens/album/album_model.dart';

import 'package:spotify_client/ui/screens/loader/loader_model.dart';
import 'package:spotify_client/ui/screens/loader/loader_screen.dart';

import 'package:spotify_client/ui/screens/liked_music_playlist/liked_music_playlist_model.dart';
import 'package:spotify_client/ui/screens/liked_music_playlist/liked_music_playlist_screen.dart';

import 'package:spotify_client/ui/screens/theme/theme_screen.dart';

import 'package:spotify_client/ui/screens/track/track_screen.dart';
import 'package:spotify_client/ui/screens/track/track_view_model.dart';

import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_screen.dart';
import 'package:spotify_client/ui/screens/transfer_playback/transfer_playback_view_model.dart';

import 'package:spotify_client/ui/screens/user_profile/user_profile_model.dart';
import 'package:spotify_client/ui/screens/user_profile/user_profile_screen.dart';

import 'package:spotify_client/ui/screens/users_queue/users_queue_screen.dart';
import 'package:spotify_client/ui/screens/users_queue/users_queue_view_model.dart';

import 'package:spotify_client/presentation/bloc/cubits/home_cubit/home_cubit.dart';

import '../../presentation/bloc/bloc/network/network_bloc.dart';

class ScreenFactory {
  Widget makeOnBoarding() {
    return ChangeNotifierProvider(
      create: (context) => OnBoardingViewModel(),
      child: const OnBoardingScreen(),
    );
  }

  Widget makeSignIn(Map<String, String>? queryParameters) {
    return ChangeNotifierProxyProvider(
      create: (context) => SignInViewModel(context, queryParameters),
      lazy: false,
      update: (BuildContext context, value, SignInViewModel? previous) =>
          SignInViewModel(context, queryParameters),
      child: const SignInScreen(),
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

  Widget makeUserProfile() {
    return ChangeNotifierProvider(
      create: (context) => UserProfileViewModel(),
      child: const UserProfileScreen(),
    );
  }

  Widget makeLikedMusicPlaylist() {
    return ChangeNotifierProvider(
      create: (context) => LikedMusicPlaylistViewModel(),
      child: const LikedMusicPlaylistScreen(),
    );
  }

  Widget makeAlbumScreen(String albumID) {
    return ChangeNotifierProvider(
      create: (context) => AlbumViewModel(albumID: albumID),
      child: const AlbumScreen(),
    );
  }

  Widget makeArtistScreen(String artistID) {
    return ChangeNotifierProvider(
      create: (context) => ArtistViewModel(artistID: artistID),
      child: const ArtistScreen(),
    );
  }

  Widget makeSettings() {
    return ChangeNotifierProvider(
      create: (context) => SettingViewModel(),
      child: const SettingsScreen(),
    );
  }

  Widget makeLocalization() {
    return const LocalizationScreen();
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
    return const ThemeScreen();
  }

  Widget makeUsersQueue() {
    return ChangeNotifierProvider(
      create: (context) => UsersQueueViewModel(),
      child: const UsersQueueScreen(),
    );
  }

  Widget makeSearch() {
    return ChangeNotifierProvider(
      create: (context) => SearchViewModel(),
      lazy: false,
      child: const SearchScreen(),
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
