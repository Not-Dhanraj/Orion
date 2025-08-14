import 'dart:async';

import 'package:client/src/features/calendar/application/calendar_service.dart';
import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final calendarHomeControllerProvider =
    AsyncNotifierProvider<CalendarHomeController, List<CalendarItem>>(() {
      return CalendarHomeController();
    });

class CalendarHomeController extends AsyncNotifier<List<CalendarItem>> {
  Timer? _autoRefreshTimer;
  DateTime? _startDate;
  DateTime? _endDate;
  DateTime focusedDay = DateTime.now();
  bool includeUnmonitored = true;

  @override
  Future<List<CalendarItem>> build() async {
    final calendarService = ref.watch(calendarServiceProvider);

    _setDefaultDateRange();

    _startAutoRefresh();

    ref.onDispose(() {
      _stopAutoRefresh();
    });

    return await calendarService.getCalendarItems(
      start: _startDate,
      end: _endDate,
      includeUnmonitored: includeUnmonitored,
    );
  }

  void _setDefaultDateRange() {
    final now = DateTime.now();
    focusedDay = now;

    final previousMonth = DateTime(now.year, now.month - 1, 1);

    final nextMonth = DateTime(now.year, now.month + 2, 0);

    _startDate = previousMonth;
    _endDate = nextMonth;
  }

  void _startAutoRefresh() {
    _stopAutoRefresh();

    _autoRefreshTimer = Timer.periodic(
      const Duration(minutes: 5),
      (_) => refreshCalendar(),
    );
  }

  void _stopAutoRefresh() {
    _autoRefreshTimer?.cancel();
    _autoRefreshTimer = null;
  }

  Future<void> refreshCalendar() async {
    final calendarService = ref.read(calendarServiceProvider);

    try {
      final calendarItems = await calendarService.getCalendarItems(
        start: _startDate,
        end: _endDate,
        includeUnmonitored: includeUnmonitored,
      );

      state = AsyncValue.data(calendarItems);
    } catch (e, stackTrace) {
      if (!state.hasValue) {
        state = AsyncValue.error(e, stackTrace);
      } else {
        debugPrint('Background refresh error: $e');
      }
    }
  }

  Future<void> updateDateRange(DateTime focusedDay) async {
    focusedDay = focusedDay;

    final startYear = focusedDay.month == 1
        ? focusedDay.year - 1
        : focusedDay.year;
    final startMonth = focusedDay.month == 1 ? 12 : focusedDay.month - 1;
    _startDate = DateTime(startYear, startMonth, 1);

    final endYear = focusedDay.month == 12
        ? focusedDay.year + 1
        : focusedDay.year;
    final endMonth = focusedDay.month == 12 ? 1 : focusedDay.month + 1;
    _endDate = DateTime(endYear, endMonth + 1, 0);

    return refreshCalendar();
  }
}
