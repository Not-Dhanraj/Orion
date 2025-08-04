class UrlValidator {
  /// Validates a URL string and returns an error message if invalid, or null if valid.
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter proper URL';
    }

    final uri = Uri.tryParse(value);
    if (uri == null ||
        !(uri.isAbsolute && (uri.scheme == 'http' || uri.scheme == 'https')) ||
        uri.host.isEmpty) {
      return 'Please enter a valid URL starting with http:// or https://';
    }

    final host = uri.host;
    final isIp =
        RegExp(r'^(\d{1,3}\.){3}\d{1,3}$').hasMatch(host) ||
        RegExp(r'^\[[0-9a-fA-F:]+\]$').hasMatch(host);

    if (!isIp && !host.contains('.')) {
      return 'Please enter a valid domain or IP address';
    }

    return null;
  }
}
