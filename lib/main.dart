import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/api_client/api_query_helper.dart';
import 'package:spotify_client/domain/api_client/user_api_client.dart';
import 'package:spotify_client/domain/services/albums/abstract_albums_service.dart';
import 'package:spotify_client/domain/services/albums/albums_service.dart';
import 'package:spotify_client/domain/services/users/abstract_users_service.dart';
import 'package:spotify_client/domain/services/users/users_service.dart';

import 'package:spotify_client/ui/screens/app/my_app.dart';

import 'package:spotify_client/ui/screens/language/localization_model.dart';

import 'package:spotify_client/ui/screens/theme/theme_view_model.dart';

import 'package:spotify_client/domain/data_providers/session_data_provider.dart';

import 'package:spotify_client/domain/repository/albums/abstract_albums_repository.dart';
import 'package:spotify_client/domain/repository/albums/albums_repository.dart';

void main() {
  void initGetIt() {
    GetIt.instance.registerLazySingleton<AbstractAlbumsRepository>(
        () => AlbumsRepository());
    GetIt.instance.registerLazySingleton<AbstractUsersService>(
            () => UsersService());
    GetIt.instance
        .registerLazySingleton<AbstractAlbumsService>(() => AlbumService());
    GetIt.instance.registerLazySingleton(() => SessionDataProvider());
    GetIt.instance.registerLazySingleton(() => ApiQueryHelper());
    GetIt.instance.registerLazySingleton(() => UserApiClient());
  }

  // debugRepaintRainbowEnabled = true;
  initGetIt();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeViewModel(
            isDarkTheme: true,
            colorScheme: const Color(0xFF673AB7),
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => LocalizationViewModel(
            localization: LocalizationLanguages.english,
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
