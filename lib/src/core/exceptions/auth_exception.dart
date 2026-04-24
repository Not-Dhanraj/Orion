class AuthException implements Exception {
  final String message;
  final dynamic error;
  final StackTrace? stackTrace;

  AuthException(this.message, {this.error, this.stackTrace});

  @override
  String toString() =>
      'AuthException: $message${error != null ? ', Error: $error' : ''}';
}
