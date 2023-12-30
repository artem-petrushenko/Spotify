abstract interface class AuthNetworkDataProvider {
  Future<Map<String, dynamic>> requestAccessToken({
    required String base64codec,
    required Map<String, dynamic> queryParameters,
  });

  Future<void> requestUserAuthorization({
    required Map<String, dynamic> queryParameters,
  });

  Future<Map<String, dynamic>> requestRefreshedAccessToken({
    required String base64codec,
    required Map<String, dynamic> queryParameters,
  });
}
