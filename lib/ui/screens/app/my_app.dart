import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

import 'package:spotify_client/ui/theme/theme_model.dart';
import 'package:spotify_client/ui/theme/dark_theme.dart';
import 'package:spotify_client/ui/theme/light_theme.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:spotify_client/ui/screens/language/localization_model.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select((ThemeModel model) => model.getThemeMode);
    final localizationUnicode = context.select((LocalizationViewModel model) => model.localizationUnicode);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      locale: Locale(localizationUnicode, ''),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routes: mainNavigation.routes,
      initialRoute: MainNavigationRouteNames.loaderScreen,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
