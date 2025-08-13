/// Utility class for formatting various types of data
class FormatUtils {
  /// Format a file size from bytes to a human-readable string
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
  
  /// Format a DateTime to a human-readable string
  static String formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = dateTime.difference(now);
    
    // If it's today, show just the time
    if (dateTime.day == now.day && 
        dateTime.month == now.month && 
        dateTime.year == now.year) {
      return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    }
    
    // If it's within the next 24 hours
    if (difference.inHours < 24 && difference.inHours > 0) {
      return '${difference.inHours}h ${difference.inMinutes.remainder(60)}m';
    }
    
    // If it's tomorrow
    if (dateTime.day == now.day + 1 && 
        dateTime.month == now.month && 
        dateTime.year == now.year) {
      return 'Tomorrow ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    }
    
    // Otherwise show the date
    return '${dateTime.month}/${dateTime.day} ${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
  
  /// Format a percentage value
  static String formatPercentage(double value) {
    return '${value.toStringAsFixed(1)}%';
  }
}
