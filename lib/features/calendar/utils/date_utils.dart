import 'package:flutter/material.dart';
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

  /// Get the week number of the year for a given date
  static int getWeekNumber(DateTime date) {
    final dayOfYear = int.parse(DateFormat('D').format(date));
    return ((dayOfYear - date.weekday + 10) / 7).floor();
  }

  /// Get a list of DateTime objects for each day in the week containing [date]
  static List<DateTime> daysInWeek(DateTime date) {
    final firstDayOfWeek = date.subtract(Duration(days: date.weekday - 1));
    return List.generate(
      7,
      (index) => firstDayOfWeek.add(Duration(days: index)),
    );
  }

  /// Get the first day of the month containing [date]
  static DateTime firstDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  /// Get the last day of the month containing [date]
  static DateTime lastDayOfMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }

  /// Returns a human-readable date range (e.g., "Jul 1-15, 2023")
  static String formatDateRange(DateTime start, DateTime end) {
    if (start.year == end.year && start.month == end.month) {
      // Same month and year
      return '${DateFormat('MMM').format(start)} ${start.day}-${end.day}, ${start.year}';
    } else if (start.year == end.year) {
      // Same year, different month
      return '${DateFormat('MMM').format(start)} ${start.day} - ${DateFormat('MMM').format(end)} ${end.day}, ${start.year}';
    } else {
      // Different years
      return '${DateFormat('MMM d, y').format(start)} - ${DateFormat('MMM d, y').format(end)}';
    }
  }

  /// Returns a color based on how far in the future or past the date is
  static Color getDateColor(BuildContext context, DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dateToCheck = DateTime(date.year, date.month, date.day);
    final colorScheme = Theme.of(context).colorScheme;

    if (dateToCheck.isBefore(today)) {
      return Colors.grey; // Past
    } else if (dateToCheck == today) {
      return colorScheme.primary; // Today
    } else if (dateToCheck.isBefore(today.add(const Duration(days: 3)))) {
      return colorScheme.secondary; // Next 3 days
    } else {
      return colorScheme.tertiary; // Further future
    }
  }

  /// Returns the number of days between two dates
  static int daysBetween(DateTime from, DateTime to) {
    final fromDate = DateTime(from.year, from.month, from.day);
    final toDate = DateTime(to.year, to.month, to.day);
    return (toDate.difference(fromDate).inHours / 24).round();
  }
}
