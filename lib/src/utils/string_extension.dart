extension StringExtension on String {
  String capitalizeByWord() {
    if (trim().isEmpty) {
      return '';
    }
    return split(' ')
        .map((element) => "${element[0].toUpperCase()}${element.substring(1)}")
        .join(" ");
  }

  String? validate() {
    if (trim().isEmpty) {
      return 'Please enter proper URL';
    }

    final uri = Uri.tryParse(this);
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

  String toNormalizedUrl() {
    var url = trim();

    if (!url.toLowerCase().startsWith('http')) {
      url = 'http://$url';
    }

    url = url.trimRight().replaceAll(RegExp(r'/+$'), '');
    return url;
  }

  String get maskServerUrl {
    try {
      final uri = Uri.parse(this);
      final host = uri.host;
      final preview = host.substring(0, (host.length / 2.5).ceil());
      final port = uri.hasPort ? ':${uri.port}' : '';
      return '${uri.scheme}://$preview***$port';
    } catch (_) {
      return '***';
    }
  }
}
