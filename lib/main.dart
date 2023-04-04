import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/app/my_app.dart';

import 'package:spotify_client/ui/screens/language/localization_model.dart';

import 'package:spotify_client/ui/screens/theme/theme_view_model.dart';

void main() {
  // debugRepaintRainbowEnabled = true;
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
