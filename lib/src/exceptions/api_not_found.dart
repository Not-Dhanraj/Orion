class ApiNotFoundException implements Exception {
  final String message;

  ApiNotFoundException([this.message = 'API not found in local storage']);

  @override
  String toString() => 'ApiNotFoundException: $message';
}
