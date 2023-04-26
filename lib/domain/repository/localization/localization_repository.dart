import 'package:shared_preferences/shared_preferences.dart';

import 'package:spotify_client/domain/repository/localization/abstract_localization_repository.dart';

abstract class _Keys {
  static const localization = 'localization';
}

class LocalizationRepository implements AbstractLocalizationRepository {
  @override
  Future<String> getLocalization() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_Keys.localization) ?? 'en';
  }

  @override
  Future<void> setLocalization(String value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_Keys.localization, value);
  }
}
