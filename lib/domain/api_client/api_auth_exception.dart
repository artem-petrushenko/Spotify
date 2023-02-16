enum ApiAuthExceptionType {
  accessDenied,
  network,
  incorrectState,

  other,
}

class ApiAuthException implements Exception {
  const ApiAuthException(this.type);

  final ApiAuthExceptionType type;
}
