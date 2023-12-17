import 'package:spotify_client/src/common/data/provider/session/local/session_storage.dart';

import 'package:spotify_client/src/common/data/client/shared_preferences_dao.dart';

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
}
