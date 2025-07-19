import 'package:intl/intl.dart';

class CalendarDateUtils {
  /// Format a date as a readable string (e.g., "Today", "Yesterday", "Tomorrow", "Monday", "July 15")
  static String formatDateForDisplay(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final tomorrow = today.add(const Duration(days: 1));
    final dateToCheck = DateTime(date.year, date.month, date.day);

    if (dateToCheck == today) {
      return 'Today';
    } else if (dateToCheck == yesterday) {
      return 'Yesterday';
    } else if (dateToCheck == tomorrow) {
      return 'Tomorrow';
    } else if (dateToCheck.isAfter(tomorrow) &&
        dateToCheck.isBefore(today.add(const Duration(days: 7)))) {
      // Within the next week, show day name
      return DateFormat('EEEE').format(date); // e.g., "Monday"
    } else {
      // Otherwise show date
      return DateFormat('MMM d').format(date); // e.g., "Jul 15"
    }
  }
}
