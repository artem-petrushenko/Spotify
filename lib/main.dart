import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/app/my_app.dart';
import 'package:spotify_client/ui/screens/language/localization_model.dart';
import 'package:spotify_client/ui/theme/theme_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModel(isDarkTheme: true)),
        ChangeNotifierProvider(
            create: (_) => LocalizationViewModel(
                localization: LocalizationLanguages.english)),
      ],
      child: const MyApp(),
    ),
  );
}
