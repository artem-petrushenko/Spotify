import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:spotify_client/ui/screens/app/my_app.dart';
import 'package:spotify_client/ui/theme/theme_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeModel>(
      create: (_) => ThemeModel(isDarkTheme: true),
      lazy: false,
      child: const MyApp(),
    ),
  );
}
