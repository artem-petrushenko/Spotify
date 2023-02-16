import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class _Keys {
  static const accessToken = 'accessToken';
  static const codeVerifier = 'codeVerifier';
  static const state = 'state';
  static const refreshToken = 'refreshToken';
}

class SessionDataProvider {
  static const _secureStorage = FlutterSecureStorage();

  Future<String?> getAccessToken() =>
      _secureStorage.read(key: _Keys.accessToken);

  Future<void> setAccessToken(String value) =>
      _secureStorage.write(key: _Keys.accessToken, value: value);

  Future<void> deleteAccessToken() =>
      _secureStorage.delete(key: _Keys.accessToken);

  Future<String?> getCodeVerifier() =>
      _secureStorage.read(key: _Keys.codeVerifier);

  Future<void> setCodeVerifier(String value) =>
      _secureStorage.write(key: _Keys.codeVerifier, value: value);

  Future<void> deleteCodeVerifier() =>
      _secureStorage.delete(key: _Keys.codeVerifier);

  Future<String?> getState() => _secureStorage.read(key: _Keys.state);

  Future<void> setState(String value) =>
      _secureStorage.write(key: _Keys.state, value: value);

  Future<void> deleteState() => _secureStorage.delete(key: _Keys.state);

  Future<String?> getRefreshToken() =>
      _secureStorage.read(key: _Keys.refreshToken);

  Future<void> setRefreshToken(String value) =>
      _secureStorage.write(key: _Keys.refreshToken, value: value);

  Future<void> deleteRefreshToken() =>
      _secureStorage.delete(key: _Keys.refreshToken);
}
