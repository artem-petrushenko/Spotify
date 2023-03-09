import 'package:shared_preferences/shared_preferences.dart';

abstract class _Keys {
  static const localization = 'localization';
}

class LocalizationProvider {
  final sharedPreferences = SharedPreferences.getInstance();

  Future<String> getLocalization() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(_Keys.localization) ?? 'en';
  }

  Future<void> setLocalization(String value) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(_Keys.localization, value);
  }
}
