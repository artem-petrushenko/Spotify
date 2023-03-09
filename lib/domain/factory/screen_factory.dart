import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/artist/artist_model.dart';
import 'package:spotify_client/ui/screens/artist/artist_screen.dart';

import 'package:spotify_client/ui/screens/language/localization_screen.dart';

import 'package:spotify_client/ui/screens/media_library/media_library_model.dart';
import 'package:spotify_client/ui/screens/media_library/media_library_screen.dart';

import 'package:spotify_client/ui/screens/on_boarding/on_boarding_model.dart';
import 'package:spotify_client/ui/screens/on_boarding/on_boarding_screen.dart';

import 'package:spotify_client/ui/screens/settings/setting_model.dart';
import 'package:spotify_client/ui/screens/settings/settings_screen.dart';

import 'package:spotify_client/ui/screens/sign_in/sign_in_model.dart';
import 'package:spotify_client/ui/screens/sign_in/sign_in_screen.dart';

import 'package:spotify_client/ui/screens/album/album_screen.dart';
import 'package:spotify_client/ui/screens/album/album_model.dart';

import 'package:spotify_client/ui/screens/loader/loader_model.dart';
import 'package:spotify_client/ui/screens/loader/loader_screen.dart';

import 'package:spotify_client/ui/screens/main/main_model.dart';
import 'package:spotify_client/ui/screens/main/main_screen.dart';

import 'package:spotify_client/ui/screens/liked_music_playlist/liked_music_playlist_model.dart';
import 'package:spotify_client/ui/screens/liked_music_playlist/liked_music_playlist_screen.dart';

import 'package:spotify_client/ui/screens/user_profile/user_profile_model.dart';
import 'package:spotify_client/ui/screens/user_profile/user_profile_screen.dart';

class ScreenFactory {
  Widget makeOnBoarding() {
    return ChangeNotifierProvider(
      create: (context) => OnBoardingViewModel(),
      child: const OnBoardingScreen(),
    );
  }

  Widget makeSignIn(Map<String, String>? queryParameters) {
    return ChangeNotifierProvider(
      create: (context) => SignInViewModel(context, queryParameters),
      lazy: false,
      child: const SignInScreen(),
    );
  }

  Widget makeMain() {
    return ChangeNotifierProvider(
      create: (context) => MainViewModel(),
      child: const MainScreen(),
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

  Widget makeAlbumScreen(String albumId) {
    return ChangeNotifierProvider(
      create: (context) => AlbumViewModel(albumId: albumId),
      child: const AlbumScreen(),
    );
  }

  Widget makeArtistScreen(String artistId) {
    return ChangeNotifierProvider(
      create: (context) => ArtistViewModel(artistId: artistId),
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
}
