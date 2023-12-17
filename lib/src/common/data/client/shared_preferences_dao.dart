import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDao {
  const SharedPreferencesDao({
    required final SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;
  final SharedPreferences _sharedPreferences;

  Future<void> updateString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  Future<void> deleteString(String key) async {
    await _sharedPreferences.remove(key);
  }

  String? readString(String key) {
    return _sharedPreferences.getString(key);
  }
}
