abstract class AbstractSessionDataRepository {
  Future<String?> getAccessToken();

  Future<void> setAccessToken(String value);

  Future<void> deleteAccessToken();

  Future<String?> getCodeVerifier();

  Future<void> setCodeVerifier(String value);

  Future<void> deleteCodeVerifier();

  Future<String?> getState();

  Future<void> setState(String value);

  Future<void> deleteState();

  Future<String?> getRefreshToken();

  Future<void> setRefreshToken(String value);

  Future<void> deleteRefreshToken();
}
