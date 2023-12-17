abstract interface class SessionStorage {
  String? getAccessToken();

  Future<void> setAccessToken(String accessToken);

  Future<void> deleteAccessToken();
}
