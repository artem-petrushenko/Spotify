import 'package:flutter/material.dart';

class AppTheme {
  final Color colorScheme;

  const AppTheme({
    required this.colorScheme,
  });

  ThemeData get light => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorScheme,
        brightness: Brightness.light,
      );

  ThemeData get dark => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorScheme,
        brightness: Brightness.dark,
      );
}
