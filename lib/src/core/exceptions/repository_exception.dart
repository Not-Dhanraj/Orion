class RepositoryException implements Exception {
  final String message;
  final dynamic error;
  final StackTrace? stackTrace;

  RepositoryException(this.message, {this.error, this.stackTrace});

  @override
  String toString() =>
      'RepositoryException: $message${error != null ? ', Error: $error' : ''}';
}
