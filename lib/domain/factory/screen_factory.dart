import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_client/ui/screens/choose_mode/choose_mode_screen.dart';
import 'package:spotify_client/ui/screens/get_started/get_started_screen.dart';

import 'package:spotify_client/ui/screens/home/home_model.dart';
import 'package:spotify_client/ui/screens/home/home_screen.dart';

import 'package:spotify_client/ui/screens/liked/liked_model.dart';
import 'package:spotify_client/ui/screens/liked/liked_screen.dart';

import 'package:spotify_client/ui/screens/loading/loading_screen.dart';

import 'package:spotify_client/ui/screens/login_selection/login_selection_screen.dart';
import 'package:spotify_client/ui/screens/lyrics/lyrics_screen.dart';

import 'package:spotify_client/ui/screens/main/main_model.dart';
import 'package:spotify_client/ui/screens/main/main_screen.dart';
import 'package:spotify_client/ui/screens/music/music_screen.dart';

import 'package:spotify_client/ui/screens/navigation/navigation_model.dart';
import 'package:spotify_client/ui/screens/navigation/navigation_screen.dart';

import 'package:spotify_client/ui/screens/sign_in/sign_in_screen.dart';

import 'package:spotify_client/ui/screens/user/user_model.dart';
import 'package:spotify_client/ui/screens/user/user_screen.dart';

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

  Widget makeSignIn() {
    return const SignInScreen();
  }

  Widget makeLoginSelection() {
    return const LoginSelectionScreen();
  }

  Widget makeLoading() {
    return const LoadingScreen();
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

  Widget makeLyrics(){
    return const LyricsScreen();
  }
}
