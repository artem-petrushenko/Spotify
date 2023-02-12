import 'package:flutter/material.dart';

import 'package:spotify_client/ui/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  static final mainNavigation = MainNavigation();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
        primarySwatch: Colors.green,
        fontFamily: 'Satoshi',
      ),
      routes: mainNavigation.routes,
      initialRoute: MainNavigationRouteNames.loaderScreen,
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
