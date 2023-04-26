abstract class AbstractThemeService {
  Future<bool> getThemeFromProvider();

  Future<void> setThemeToProvider(bool value);

  Future<int> getThemeSchemeFromProvider();

  Future<void> setThemeSchemeToProvider(int value);
}
