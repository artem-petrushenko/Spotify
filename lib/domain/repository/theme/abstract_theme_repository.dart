abstract class AbstractThemeRepository {
  Future<bool> getIsDarkTheme();

  Future<void> setIsDarkTheme(bool value);

  Future<int> getThemeScheme();

  Future<void> setThemeScheme(int value);
}
