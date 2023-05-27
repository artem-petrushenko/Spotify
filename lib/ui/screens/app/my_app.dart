import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/config/router/router.dart';

import 'package:spotify_client/presentation/bloc/cubits/localization/localization_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final colorScheme =
    //     context.select((ThemeViewModel model) => model.colorScheme);
    // final themeMode =
    //     context.select((ThemeViewModel model) => model.getThemeMode);
    // final localizationUnicode = context
    //     .select((LocalizationViewModel model) => model.localizationUnicode);
    final localizationUnicode =
        context.select((LocalizationCubit cubit) => cubit.localizationUnicode);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      // themeMode: themeMode,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
        // colorSchemeSeed: colorScheme,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
        useMaterial3: true,
        // colorSchemeSeed: colorScheme,
        brightness: Brightness.dark,
      ),
      locale: Locale(localizationUnicode, ''),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: MainGoRouter.router.routerDelegate,
      routeInformationParser: MainGoRouter.router.routeInformationParser,
      routeInformationProvider: MainGoRouter.router.routeInformationProvider,
      backButtonDispatcher: MainGoRouter.router.backButtonDispatcher,
    );
  }
}
