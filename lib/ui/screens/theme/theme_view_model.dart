import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:spotify_client/domain/services/theme/abstract_theme_service.dart';

class ColorSchemeData {
  final String name;
  final int colorScheme;

  const ColorSchemeData({
    required this.name,
    required this.colorScheme,
  });

  ColorSchemeData copyWith({
    String? name,
    int? colorScheme,
  }) {
    return ColorSchemeData(
      name: name ?? this.name,
      colorScheme: colorScheme ?? this.colorScheme,
    );
  }
}

class ThemeViewModel with ChangeNotifier {
  late int indexCheck;
  late bool isDarkTheme;

  late Color colorScheme;

  ThemeMode get getThemeMode => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  static const colorSchemes = <ColorSchemeData>[
    ColorSchemeData(name: 'Red', colorScheme: 0xFFF44336),
    ColorSchemeData(name: 'Pink', colorScheme: 0xFFE91E63),
    ColorSchemeData(name: 'Purple', colorScheme: 0xFF9C27B0),
    ColorSchemeData(name: 'Deep Purple', colorScheme: 0xFF673AB7),
    ColorSchemeData(name: 'Indigo', colorScheme: 0xFF3F51B5),
    ColorSchemeData(name: 'Blue', colorScheme: 0xFF2196F3),
    ColorSchemeData(name: 'Light Blue', colorScheme: 0xFF03A9F4),
    ColorSchemeData(name: 'Cyan', colorScheme: 0xFF00BCD4),
    ColorSchemeData(name: 'Teal', colorScheme: 0xFF009688),
    ColorSchemeData(name: 'Green', colorScheme: 0xFF4CAF50),
    ColorSchemeData(name: 'Light Green', colorScheme: 0xFF8BC34A),
    ColorSchemeData(name: 'Lime', colorScheme: 0xFFCDDC39),
    ColorSchemeData(name: 'Yellow', colorScheme: 0xFFFFEB3B),
    ColorSchemeData(name: 'Amber', colorScheme: 0xFFFFC107),
    ColorSchemeData(name: 'Orange', colorScheme: 0xFFFF9800),
    ColorSchemeData(name: 'Deep Orange', colorScheme: 0xFFFF5722),
    ColorSchemeData(name: 'Brown', colorScheme: 0xFF795548),
    ColorSchemeData(name: 'Grey', colorScheme: 0xFF9E9E9E),
    ColorSchemeData(name: 'Blue Grey', colorScheme: 0xFF607D8B),
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
        .then((value) => _setIndexColor(value))
        .then((value) => Color(value));
    notifyListeners();
  }

  int _setIndexColor(int value) {
    indexCheck =
        colorSchemes.indexWhere((element) => element.colorScheme == value);
    return value;
  }

  void setThemeScheme(int value) {
    _setColorScheme(value);
    indexCheck = value;
    notifyListeners();
  }

  void _setColorScheme(int value) {
    colorScheme = Color(colorSchemes[value].colorScheme);
    GetIt.instance<AbstractThemeService>()
        .setThemeSchemeToProvider(colorSchemes[value].colorScheme);
  }

  void closeScreen(BuildContext context) {
    context.pop();
  }
}
