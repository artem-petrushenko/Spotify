import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/repository/artists/abstract_artists_repository.dart';
import 'package:spotify_client/domain/repository/artists/artists_repository.dart';
import 'package:spotify_client/domain/repository/auth/abstract_auth_repository.dart';
import 'package:spotify_client/domain/repository/auth/auth_repository.dart';
import 'package:spotify_client/domain/repository/localization/abstract_localization_repository.dart';
import 'package:spotify_client/domain/repository/localization/localization_repository.dart';
import 'package:spotify_client/domain/repository/player/abstract_player_repository.dart';
import 'package:spotify_client/domain/repository/player/player_repository.dart';
import 'package:spotify_client/domain/repository/playlists/abstract_playlists_repository.dart';
import 'package:spotify_client/domain/repository/playlists/playlists_repository.dart';
import 'package:spotify_client/domain/repository/search/abstract_search_repository.dart';
import 'package:spotify_client/domain/repository/search/search_repository.dart';
import 'package:spotify_client/domain/repository/session_data/abstract_session_data_repository.dart';
import 'package:spotify_client/domain/repository/session_data/session_data_repository.dart';
import 'package:spotify_client/domain/repository/theme/abstract_theme_repository.dart';
import 'package:spotify_client/domain/repository/theme/theme_repository.dart';
import 'package:spotify_client/domain/repository/tracks/abstract_tracks_repository.dart';
import 'package:spotify_client/domain/repository/tracks/tracks_repository.dart';
import 'package:spotify_client/domain/repository/users/abstract_users_repository.dart';
import 'package:spotify_client/domain/repository/users/users_repository.dart';
import 'package:spotify_client/domain/repository/albums/abstract_albums_repository.dart';
import 'package:spotify_client/domain/repository/albums/albums_repository.dart';

import 'package:spotify_client/domain/services/albums/abstract_albums_service.dart';
import 'package:spotify_client/domain/services/albums/albums_service.dart';
import 'package:spotify_client/domain/services/artists/abstract_artists_service.dart';
import 'package:spotify_client/domain/services/artists/artists_service.dart';
import 'package:spotify_client/domain/services/auth/abstract_auth_service.dart';
import 'package:spotify_client/domain/services/auth/auth_service.dart';
import 'package:spotify_client/domain/services/localization/abstract_localization_service.dart';
import 'package:spotify_client/domain/services/player/abstract_player_service.dart';
import 'package:spotify_client/domain/services/player/player_service.dart';
import 'package:spotify_client/domain/services/playlists/abstract_playlists_service.dart';
import 'package:spotify_client/domain/services/playlists/playlists_service.dart';
import 'package:spotify_client/domain/services/search/abstract_search_service.dart';
import 'package:spotify_client/domain/services/search/search_service.dart';
import 'package:spotify_client/domain/services/theme/abstract_theme_service.dart';
import 'package:spotify_client/domain/services/theme/theme_service.dart';
import 'package:spotify_client/domain/services/tracks/abstract_tracks_service.dart';
import 'package:spotify_client/domain/services/tracks/tracks_service.dart';
import 'package:spotify_client/domain/services/users/abstract_users_service.dart';
import 'package:spotify_client/domain/services/users/users_service.dart';
import 'package:spotify_client/domain/services/localization/localization_service.dart';

class AppDI {
  static Future<void> _registerRepositories() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    GetIt.instance.registerLazySingleton<AbstractSessionDataRepository>(() =>
        const SessionDataRepository(secureStorage: FlutterSecureStorage()));

    GetIt.instance.registerLazySingleton<AbstractUsersRepository>(
        () => UsersRepository());
    GetIt.instance.registerLazySingleton<AbstractTracksRepository>(
        () => TrackRepository());
    GetIt.instance.registerLazySingleton<AbstractAlbumsRepository>(
        () => AlbumsRepository());
    GetIt.instance.registerLazySingleton<AbstractArtistsRepository>(
        () => ArtistsRepository());
    GetIt.instance
        .registerLazySingleton<AbstractAuthRepository>(() => AuthRepository());
    GetIt.instance.registerLazySingleton<AbstractPlayerRepository>(
        () => PlayerRepository());

    GetIt.instance.registerLazySingleton<AbstractLocalizationRepository>(
        () => LocalizationRepository(sharedPreferences: sharedPreferences));
    GetIt.instance.registerLazySingleton<AbstractThemeRepository>(
        () => ThemeRepository(sharedPreferences: sharedPreferences));
    GetIt.instance.registerLazySingleton<AbstractPlaylistsRepository>(
        () => PlaylistsRepository());
    GetIt.instance.registerLazySingleton<AbstractSearchRepository>(
            () => SearchRepository());
  }

  static void _registerServices() {
    GetIt.instance.registerLazySingleton<AbstractLocalizationService>(
        () => LocalizationService());
    GetIt.instance
        .registerLazySingleton<AbstractSearchService>(() => SearchService());
    GetIt.instance
        .registerLazySingleton<AbstractUsersService>(() => UsersService());
    GetIt.instance
        .registerLazySingleton<AbstractTracksService>(() => TracksService());
    GetIt.instance
        .registerLazySingleton<AbstractAlbumsService>(() => AlbumsService());
    GetIt.instance
        .registerLazySingleton<AbstractArtistsService>(() => ArtistsService());
    GetIt.instance
        .registerLazySingleton<AbstractAuthService>(() => AuthService());
    GetIt.instance
        .registerLazySingleton<AbstractPlayerService>(() => PlayerService());
    GetIt.instance
        .registerLazySingleton<AbstractThemeService>(() => ThemeService());
    GetIt.instance.registerLazySingleton<AbstractPlaylistsService>(
        () => PlaylistsService());
  }

  static Future<void> initGetIt() async {
    _registerServices();
    await _registerRepositories();

    GetIt.instance.registerLazySingleton(() => ApiQueryHelper());
  }
}
