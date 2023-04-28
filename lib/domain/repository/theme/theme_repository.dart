import 'package:shared_preferences/shared_preferences.dart';

import 'package:spotify_client/domain/repository/theme/abstract_theme_repository.dart';

abstract class _Keys {
  static const isDarkTheme = 'isDarkTheme';
  static const colorScheme = 'colorScheme';
}

class ThemeRepository implements AbstractThemeRepository {
  final SharedPreferences sharedPreferences;

  const ThemeRepository({required this.sharedPreferences});

  @override
  Future<bool> getIsDarkTheme() async {
    return sharedPreferences.getBool(_Keys.isDarkTheme) ?? false;
  }

  @override
  Future<void> setIsDarkTheme(bool value) async {
    sharedPreferences.setBool(_Keys.isDarkTheme, value);
  }

  @override
  Future<int> getThemeScheme() async {
    return sharedPreferences.getInt(_Keys.colorScheme) ?? 0xFF673AB7;
  }

  @override
  Future<void> setThemeScheme(int value) async {
    sharedPreferences.setInt(_Keys.colorScheme, value);
  }
}
