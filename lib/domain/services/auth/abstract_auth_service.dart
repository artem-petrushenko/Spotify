abstract class AbstractAuthService {
  Future<void> logout();

  Future<bool> isAuth();

  Future<void> makeRequestBrowser();

  Future<void> handleDeeplink(Map<String, String> queryParameters);

  Future<void> requestRefreshedAccessToken();
}