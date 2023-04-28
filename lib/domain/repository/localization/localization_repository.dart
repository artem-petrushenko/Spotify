import 'package:shared_preferences/shared_preferences.dart';

import 'package:spotify_client/domain/repository/localization/abstract_localization_repository.dart';

abstract class _Keys {
  static const localization = 'localization';
}

class LocalizationRepository implements AbstractLocalizationRepository {
  final SharedPreferences sharedPreferences;

  const LocalizationRepository({required this.sharedPreferences});

  @override
  Future<String> getLocalization() async {
    return sharedPreferences.getString(_Keys.localization) ?? 'en';
  }

  @override
  Future<void> setLocalization(String value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_Keys.localization, value);
  }
}
