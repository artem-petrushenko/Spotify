import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';
import 'package:spotify_client/ui/theme/theme_model.dart';

import 'package:spotify_client/ui/theme/dark_theme.dart';
import 'package:spotify_client/ui/theme/light_theme.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select((ThemeModel model) => model.getThemeMode);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: mainNavigation.routes,
      initialRoute: MainNavigationRouteNames.loaderScreen,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
