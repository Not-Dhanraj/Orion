import 'dart:async';

import 'package:client/src/features/calendar/application/calendar_service.dart';
import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final calendarControllerProvider =
    AsyncNotifierProvider<CalendarController, List<CalendarItem>>(() {
      return CalendarController();
    });

class CalendarController extends AsyncNotifier<List<CalendarItem>> {
  Timer? _autoRefreshTimer;
  DateTime? _startDate;
  DateTime? _endDate;
  DateTime _focusedDay = DateTime.now();
  bool _includeUnmonitored = true;

  @override
  Future<List<CalendarItem>> build() async {
    // Get service from ref
    final calendarService = ref.watch(calendarServiceProvider);

    // Set default date range (1 month before, current month, and 1 month after)
    _setDefaultDateRange();

    // Initialize auto-refresh
    if (calendarService.hasEnabledService) {
      _startAutoRefresh();
    }

    // Add listener to dispose timer when ref is disposed
    ref.onDispose(() {
      _stopAutoRefresh();
    });

    // Initial data fetch
    if (calendarService.hasEnabledService) {
      return await calendarService.getCalendarItems(
        start: _startDate,
        end: _endDate,
        includeUnmonitored: _includeUnmonitored,
      );
    } else {
      return [];
    }
  }

  /// Sets the default date range to current month +/- 1 month
  void _setDefaultDateRange() {
    final now = DateTime.now();
    _focusedDay = now; // Save the focused day

    // Start from the first day of the previous month
    final previousMonth = DateTime(now.year, now.month - 1, 1);

    // End on the last day of the next month
    final nextMonth = DateTime(now.year, now.month + 2, 0);

    _startDate = previousMonth;
    _endDate = nextMonth;
  }

  /// Start auto-refreshing calendar data every 5 minutes
  void _startAutoRefresh() {
    _stopAutoRefresh(); // Cancel any existing timer

    _autoRefreshTimer = Timer.periodic(
      const Duration(minutes: 5), // Calendar doesn't need frequent updates
      (_) => refreshCalendar(),
    );
  }

  /// Stop auto-refreshing calendar data
  void _stopAutoRefresh() {
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;
  }

  /// Refresh the calendar data from enabled services
  Future<void> refreshCalendar() async {
    final calendarService = ref.read(calendarServiceProvider);

    if (!calendarService.hasEnabledService) {
      state = const AsyncValue.data([]);
      return;
    }

    try {
      final calendarItems = await calendarService.getCalendarItems(
        start: _startDate,
        end: _endDate,
        includeUnmonitored: _includeUnmonitored,
      );

      // Update state with new data
      state = AsyncValue.data(calendarItems);
    } catch (e, stackTrace) {
      // Only update with error if there's no existing data
      if (!state.hasValue) {
        state = AsyncValue.error(e, stackTrace);
      } else {
        // Log the error but keep showing existing data for background refresh
        debugPrint('Background refresh error: $e');
      }
    }
  }

  /// Update the date range and refresh calendar based on focused day
  /// The focused day becomes the center month, with one month before and after
  Future<void> updateDateRange(DateTime focusedDay) async {
    // Save the new focused day
    _focusedDay = focusedDay;

    // Calculate start date (first day of the month before focused date)
    final startYear = focusedDay.month == 1
        ? focusedDay.year - 1
        : focusedDay.year;
    final startMonth = focusedDay.month == 1 ? 12 : focusedDay.month - 1;
    _startDate = DateTime(startYear, startMonth, 1);

    // Calculate end date (last day of the month after focused date)
    final endYear = focusedDay.month == 12
        ? focusedDay.year + 1
        : focusedDay.year;
    final endMonth = focusedDay.month == 12 ? 1 : focusedDay.month + 1;
    _endDate = DateTime(endYear, endMonth + 1, 0); // Last day of end month

    return refreshCalendar();
  }

  /// Get the current focused day
  DateTime getFocusedDay() {
    return _focusedDay;
  }

  /// Toggle including unmonitored items
  Future<void> toggleUnmonitored(bool include) async {
    _includeUnmonitored = include;
    return refreshCalendar();
  }
}
