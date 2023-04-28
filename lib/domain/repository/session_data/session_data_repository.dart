import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:spotify_client/domain/repository/session_data/abstract_session_data_repository.dart';

abstract class _Keys {
  static const accessToken = 'accessToken';
  static const codeVerifier = 'codeVerifier';
  static const state = 'state';
  static const refreshToken = 'refreshToken';
}

class SessionDataRepository implements AbstractSessionDataRepository {
  final FlutterSecureStorage secureStorage;

  const SessionDataRepository({required this.secureStorage});

  @override
  Future<String?> getAccessToken() =>
      secureStorage.read(key: _Keys.accessToken);

  @override
  Future<void> setAccessToken(String value) =>
      secureStorage.write(key: _Keys.accessToken, value: value);

  @override
  Future<void> deleteAccessToken() =>
      secureStorage.delete(key: _Keys.accessToken);

  @override
  Future<String?> getCodeVerifier() =>
      secureStorage.read(key: _Keys.codeVerifier);

  @override
  Future<void> setCodeVerifier(String value) =>
      secureStorage.write(key: _Keys.codeVerifier, value: value);

  @override
  Future<void> deleteCodeVerifier() =>
      secureStorage.delete(key: _Keys.codeVerifier);

  @override
  Future<String?> getState() => secureStorage.read(key: _Keys.state);

  @override
  Future<void> setState(String value) =>
      secureStorage.write(key: _Keys.state, value: value);

  @override
  Future<void> deleteState() => secureStorage.delete(key: _Keys.state);

  @override
  Future<String?> getRefreshToken() =>
      secureStorage.read(key: _Keys.refreshToken);

  @override
  Future<void> setRefreshToken(String value) =>
      secureStorage.write(key: _Keys.refreshToken, value: value);

  @override
  Future<void> deleteRefreshToken() =>
      secureStorage.delete(key: _Keys.refreshToken);
}
