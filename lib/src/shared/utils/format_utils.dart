class FormatUtils {
  static String formatFileSize(double bytes) {
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    var i = 0;
    double size = bytes;

    while (size >= 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }

    return '${size.toStringAsFixed(1)} ${suffixes[i]}';
  }

  /// Returns a zero-padded 2-digit episode number string (e.g. 01, 12).
  /// Falls back to '00' when [n] is null.
  static String formatEpisodeNumber(int? n) =>
      n?.toString().padLeft(2, '0') ?? '00';

  static String formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = dateTime.difference(now);

    if (dateTime.day == now.day &&
        dateTime.month == now.month &&
        dateTime.year == now.year) {
      return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    }

    if (difference.inHours < 24 && difference.inHours > 0) {
      return '${difference.inHours}h ${difference.inMinutes.remainder(60)}m';
    }

    if (dateTime.day == now.day + 1 &&
        dateTime.month == now.month &&
        dateTime.year == now.year) {
      return 'Tomorrow ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    }

    return '${dateTime.month}/${dateTime.day} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  static String formatPercentage(double value) {
    return '${value.toStringAsFixed(1)}%';
  }
}
