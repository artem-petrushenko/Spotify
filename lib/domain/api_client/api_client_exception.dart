enum ApiClientExceptionType {
  unauthorized,
  forbidden,
  tooManyRequests,
  other,
  network
}

class ApiClientException implements Exception {
  const ApiClientException(this.type);

  final ApiClientExceptionType type;
}
