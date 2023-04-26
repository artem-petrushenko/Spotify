import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/services/theme/abstract_theme_service.dart';

class ColorSchemeData {
  final String name;
  final int colorScheme;
  final bool isSelect;

  const ColorSchemeData({
    required this.name,
    required this.colorScheme,
    required this.isSelect,
  });

  ColorSchemeData copyWith({
    String? name,
    int? colorScheme,
    bool? isSelect,
  }) {
    return ColorSchemeData(
      name: name ?? this.name,
      colorScheme: colorScheme ?? this.colorScheme,
      isSelect: isSelect ?? this.isSelect,
    );
  }
}

class ThemeViewModel with ChangeNotifier {
  late bool isDarkTheme;

  late Color colorScheme;

  ThemeMode get getThemeMode => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  static const colorSchemes = <ColorSchemeData>[
    ColorSchemeData(name: 'Red', colorScheme: 0xFFF44336, isSelect: false),
    ColorSchemeData(name: 'Pink', colorScheme: 0xFFE91E63, isSelect: false),
    ColorSchemeData(name: 'Purple', colorScheme: 0xFF9C27B0, isSelect: false),
    ColorSchemeData(
        name: 'Deep Purple', colorScheme: 0xFF673AB7, isSelect: false),
    ColorSchemeData(name: 'Indigo', colorScheme: 0xFF3F51B5, isSelect: false),
    ColorSchemeData(name: 'Blue', colorScheme: 0xFF2196F3, isSelect: false),
    ColorSchemeData(
        name: 'Light Blue', colorScheme: 0xFF03A9F4, isSelect: false),
    ColorSchemeData(name: 'Cyan', colorScheme: 0xFF00BCD4, isSelect: false),
    ColorSchemeData(name: 'Teal', colorScheme: 0xFF009688, isSelect: false),
    ColorSchemeData(name: 'Green', colorScheme: 0xFF4CAF50, isSelect: false),
    ColorSchemeData(
        name: 'Light Green', colorScheme: 0xFF8BC34A, isSelect: false),
    ColorSchemeData(name: 'Lime', colorScheme: 0xFFCDDC39, isSelect: false),
    ColorSchemeData(name: 'Yellow', colorScheme: 0xFFFFEB3B, isSelect: false),
    ColorSchemeData(name: 'Amber', colorScheme: 0xFFFFC107, isSelect: false),
    ColorSchemeData(name: 'Orange', colorScheme: 0xFFFF9800, isSelect: false),
    ColorSchemeData(
        name: 'Deep Orange', colorScheme: 0xFFFF5722, isSelect: false),
    ColorSchemeData(name: 'Brown', colorScheme: 0xFF795548, isSelect: false),
    ColorSchemeData(name: 'Grey', colorScheme: 0xFF9E9E9E, isSelect: false),
    ColorSchemeData(
        name: 'Blue Grey', colorScheme: 0xFF607D8B, isSelect: false),
  ];

  ThemeViewModel({required this.isDarkTheme, required this.colorScheme}) {
    _getThemeData();
    _getColorScheme();
  }

  Future<void> _getThemeData() async {
    isDarkTheme =
        await GetIt.instance<AbstractThemeService>().getThemeFromProvider();
    notifyListeners();
  }

  void setThemeData(bool value) {
    isDarkTheme = value;
    GetIt.instance<AbstractThemeService>().setThemeToProvider(isDarkTheme);
    notifyListeners();
  }

  Future<void> _getColorScheme() async {
    colorScheme = await GetIt.instance<AbstractThemeService>()
        .getThemeSchemeFromProvider()
        .then((value) => Color(value));
    notifyListeners();
  }

  void setThemeScheme(int value) {
    colorScheme = Color(value);
    GetIt.instance<AbstractThemeService>().setThemeSchemeToProvider(value);
    notifyListeners();
  }
}
