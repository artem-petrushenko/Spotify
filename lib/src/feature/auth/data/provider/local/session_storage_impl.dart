import 'package:spotify_client/src/common/data/client/shared_preferences_dao.dart';
import 'package:spotify_client/src/feature/auth/data/provider/local/session_storage.dart';

abstract class _Keys {
  static const accessToken = 'accessToken';
  static const codeVerifier = 'codeVerifier';
  static const state = 'state';
  static const refreshToken = 'refreshToken';
}

class SessionStorageImpl implements SessionStorage {
  const SessionStorageImpl({
    required SharedPreferencesDao preferences,
  }) : _preferences = preferences;

  final SharedPreferencesDao _preferences;

  @override
  Future<void> deleteAccessToken() async =>
      _preferences.deleteString(_Keys.accessToken);

  @override
  String? getAccessToken() => _preferences.readString(_Keys.accessToken);

  @override
  Future<void> setAccessToken(String accessToken) async =>
      _preferences.updateString(_Keys.accessToken, accessToken);

  @override
  Future<void> deleteCodeVerifier() async =>
      await _preferences.deleteString(_Keys.codeVerifier);

  @override
  Future<void> deleteRefreshToken() async =>
      await _preferences.deleteString(_Keys.refreshToken);

  @override
  Future<void> deleteState() async =>
      await _preferences.deleteString(_Keys.state);

  @override
  String? getCodeVerifier() => _preferences.readString(_Keys.codeVerifier);

  @override
  String? getRefreshToken() => _preferences.readString(_Keys.refreshToken);

  @override
  String? getState() => _preferences.readString(_Keys.state);

  @override
  Future<void> setCodeVerifier(String value) async =>
      await _preferences.updateString(_Keys.codeVerifier, value);

  @override
  Future<void> setRefreshToken(String value) async =>
      await _preferences.updateString(_Keys.refreshToken, value);

  @override
  Future<void> setState(String value) async =>
      await _preferences.updateString(_Keys.state, value);
}
