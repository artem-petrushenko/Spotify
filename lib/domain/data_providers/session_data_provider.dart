import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class _Keys {
  static const accessToken = 'accessToken';
  static const codeVerifier = 'codeVerifier';
}

class SessionDataProvider {
  static const _secureStorage = FlutterSecureStorage();

  Future<String?> getAccessToken()  =>
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
}
