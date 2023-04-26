import 'package:get_it/get_it.dart';

import 'package:spotify_client/domain/repository/theme/abstract_theme_repository.dart';

import 'package:spotify_client/domain/services/theme/abstract_theme_service.dart';

class ThemeService implements AbstractThemeService {
  @override
  Future<bool> getThemeFromProvider() async =>
      await GetIt.instance<AbstractThemeRepository>().getIsDarkTheme();

  @override
  Future<void> setThemeToProvider(bool value) async =>
      await GetIt.instance<AbstractThemeRepository>().setIsDarkTheme(value);

  @override
  Future<int> getThemeSchemeFromProvider() async =>
      await GetIt.instance<AbstractThemeRepository>().getThemeScheme();

  @override
  Future<void> setThemeSchemeToProvider(int value) async =>
      await GetIt.instance<AbstractThemeRepository>().setThemeScheme(value);
}
