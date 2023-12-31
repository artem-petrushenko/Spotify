abstract interface class AuthenticationRepository {
  String? fetchAccessToken();

  Future<void> logout();

  Future<void> makeRequestBrowser();

  Future<void> handleDeeplink(Map<String, String> queryParameters);

  Future<void> requestRefreshedAccessToken();
}
