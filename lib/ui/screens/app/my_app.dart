import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:spotify_client/ui/navigation/router.dart';

import 'package:spotify_client/ui/screens/language/localization_model.dart';

import 'package:spotify_client/ui/screens/theme/theme_view_model.dart';

class MyApp extends StatelessWidget {
  static final router = MainGoRouter();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme =
        context.select((ThemeViewModel model) => model.colorScheme);
    final themeMode =
        context.select((ThemeViewModel model) => model.getThemeMode);
    final localizationUnicode = context
        .select((LocalizationViewModel model) => model.localizationUnicode);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      themeMode: themeMode,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorScheme,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorScheme,
        brightness: Brightness.dark,
      ),
      locale: Locale(localizationUnicode, ''),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router.router,
    );
  }
}
