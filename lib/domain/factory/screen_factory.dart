import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/album/album_model.dart';

import 'package:spotify_client/ui/screens/choose_mode/choose_mode_screen.dart';
import 'package:spotify_client/ui/screens/get_started/get_started_screen.dart';

import 'package:spotify_client/ui/screens/home/home_model.dart';
import 'package:spotify_client/ui/screens/home/home_screen.dart';

import 'package:spotify_client/ui/screens/liked/liked_model.dart';
import 'package:spotify_client/ui/screens/liked/liked_screen.dart';

import 'package:spotify_client/ui/screens/loader/loader_model.dart';
import 'package:spotify_client/ui/screens/loader/loader_screen.dart';

import 'package:spotify_client/ui/screens/login_selection/login_selection_screen.dart';

import 'package:spotify_client/ui/screens/lyrics/lyrics_screen.dart';

import 'package:spotify_client/ui/screens/main/main_model.dart';
import 'package:spotify_client/ui/screens/main/main_screen.dart';

import 'package:spotify_client/ui/screens/music/music_screen.dart';
import 'package:spotify_client/ui/screens/music_playlist/music_playlist_model.dart';
import 'package:spotify_client/ui/screens/music_playlist/music_playlist_screen.dart';

import 'package:spotify_client/ui/screens/navigation/navigation_model.dart';
import 'package:spotify_client/ui/screens/navigation/navigation_screen.dart';

import 'package:spotify_client/ui/screens/sign_in/sign_in_model.dart';
import 'package:spotify_client/ui/screens/sign_in/sign_in_screen.dart';

import 'package:spotify_client/ui/screens/user/user_model.dart';
import 'package:spotify_client/ui/screens/user/user_screen.dart';

import 'package:spotify_client/ui/screens/user_profile/user_profile_model.dart';
import 'package:spotify_client/ui/screens/user_profile/user_profile_screen.dart';

import 'package:spotify_client/ui/screens/album/album_screen.dart';

class ScreenFactory {
  Widget makeMain() {
    return Provider(
      create: (context) => MainViewModel(),
      child: const MainScreen(),
    );
  }

  Widget makeHome() {
    return Provider(
      create: (context) => HomeViewModel(),
      child: const HomeScreen(),
    );
  }

  Widget makeNavigation() {
    return Provider(
      create: (context) => NavigationViewModel(),
      child: const NavigationScreen(),
    );
  }

  Widget makeLiked() {
    return Provider(
      create: (context) => LikedViewModel(),
      child: const LikedScreen(),
    );
  }

  Widget makeUser() {
    return Provider(
      create: (context) => UserViewModel(),
      child: const UserScreen(),
    );
  }

  Widget makeSignIn(Map<String, String>? queryParameters) {
    return Provider(
      create: (context) => SignInViewModel(context, queryParameters),
      lazy: false,
      child: const SignInScreen(),
    );
  }

  Widget makeLoginSelection() {
    return const LoginSelectionScreen();
  }

  Widget makeLoader() {
    return Provider(
      create: (context) => LoaderViewModel(context),
      lazy: false,
      child: const LoaderScreen(),
    );
  }

  Widget makeGetStarted() {
    return const GetStartedScreen();
  }

  Widget makeChooseMode() {
    return const ChooseModeScreen();
  }

  Widget makeMusic() {
    return const MusicScreen();
  }

  Widget makeLyrics() {
    return const LyricsScreen();
  }

  Widget makeUserProfile() {
    return ChangeNotifierProvider(
      create: (context) => UserProfileViewModel(),
      child: const UserProfileScreen(),
    );
  }

  Widget makeMusicPlaylist() {
    return ChangeNotifierProvider(
      create: (context) => MusicPlaylistModel(),
      child: const MusicPlaylistScreen(),
    );
  }

  Widget makeAlbumScreen() {
    return ChangeNotifierProvider(
      create: (context) => AlbumViewModel(),
      child: const AlbumScreen(),
    );
  }
}
