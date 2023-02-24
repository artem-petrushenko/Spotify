import 'package:flutter/material.dart';

import 'package:spotify_client/domain/services/theme_service.dart';

class ThemeModel with ChangeNotifier {
  late bool isDarkTheme;

  final _themeService = ThemeService();

  ThemeMode get getThemeMode => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  ThemeModel({required this.isDarkTheme}) {
    _getThemeData();
  }

  Future<void> _getThemeData() async {
    isDarkTheme = await _themeService.getThemeFromProvider();
    notifyListeners();
  }

  void setThemeData(bool value) {
    isDarkTheme = value;
    _themeService.setThemeToProvider(isDarkTheme);
    notifyListeners();
  }
}
