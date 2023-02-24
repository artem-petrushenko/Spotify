import 'package:spotify_client/domain/data_providers/theme_data_provider.dart';

class ThemeService {
  final _themeDataProvider = ThemeDataProvider();

  Future<bool> getThemeFromProvider() async =>
      await _themeDataProvider.getIsDarkTheme();

  Future<void> setThemeToProvider(bool value) async =>
      await _themeDataProvider.setIsDarkTheme(value);
}
