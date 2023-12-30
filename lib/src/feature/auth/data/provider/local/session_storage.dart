abstract interface class SessionStorage {
  String? getAccessToken();

  Future<void> setAccessToken(String accessToken);

  Future<void> deleteAccessToken();

  String? getCodeVerifier();

  Future<void> setCodeVerifier(String value);

  Future<void> deleteCodeVerifier();

  String? getState();

  Future<void> setState(String value);

  Future<void> deleteState();

  String? getRefreshToken();

  Future<void> setRefreshToken(String value);

  Future<void> deleteRefreshToken();
}
