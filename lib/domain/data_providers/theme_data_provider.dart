import 'package:shared_preferences/shared_preferences.dart';

abstract class _Keys {
  static const isDarkTheme = 'isDarkTheme';
  static const colorScheme = 'colorScheme';
}

class ThemeDataProvider {
  final sharedPreferences = SharedPreferences.getInstance();

  Future<bool> getIsDarkTheme() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(_Keys.isDarkTheme) ?? false;
  }

  Future<void> setIsDarkTheme(bool value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(_Keys.isDarkTheme, value);
  }

  Future<int> getThemeScheme() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt(_Keys.colorScheme) ?? 0xFF673AB7;
  }

  Future<void> setThemeScheme(int value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt(_Keys.colorScheme, value);
  }
}
