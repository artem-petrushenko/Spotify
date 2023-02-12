enum ApiClientExceptionType { network, auth, other, accessDenied }

class ApiClientException implements Exception {
  const ApiClientException(this.type);

  final ApiClientExceptionType type;
}
