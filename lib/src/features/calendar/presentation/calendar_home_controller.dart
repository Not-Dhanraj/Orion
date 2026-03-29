import 'package:client/src/features/calendar/application/calendar_service.dart';
import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:client/src/features/calendar/domain/calendar_ui_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class CalendarHomeController extends AsyncNotifier<CalendarHomeState> {
  static final _today = _dateOnly(DateTime.now());
  static final _minDay = DateTime(_today.year, _today.month - 12);
  static final _maxDay = DateTime(_today.year, _today.month + 12, 28);
  static const _weekdayLabels = [
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SAT',
    'SUN',
  ];

  late DateTime _windowStart;
  late DateTime _fetchedMonth;
  late DateTime _startDate;
  late DateTime _endDate;
  int _selectedDayIndex = 0;
  bool includeUnmonitored = true;
  List<CalendarItem> _cachedItems = [];

  @override
  Future<CalendarHomeState> build() async {
    _windowStart = _mondayOf(_today);
    _fetchedMonth = DateTime(_windowStart.year, _windowStart.month);
    _updateDateRange(_fetchedMonth);
    _selectedDayIndex = _today.weekday - 1;

    final items = await ref
        .watch(calendarServiceProvider)
        .getCalendarItems(
          start: _startDate,
          end: _endDate,
          includeUnmonitored: includeUnmonitored,
        );

    return _buildState(items);
  }

  Future<void> refreshCalendar() async {
    ref.invalidateSelf();
    await future;
  }

  void selectDay(int index) {
    final current = state.valueOrNull;
    if (current == null) return;
    _selectedDayIndex = index.clamp(0, 6);
    state = AsyncValue.data(
      current.copyWith(
        selectedDayIndex: _selectedDayIndex,
        entries: _buildEntriesForDay(
          _cachedItems,
          current.days[_selectedDayIndex],
        ),
      ),
    );
  }

  Future<void> shiftBack() => _shift(-7);
  Future<void> shiftForward() => _shift(7);

  bool get _canGoPrev => _windowStart.isAfter(_minDay);
  bool get _canGoNext =>
      _windowStart.add(const Duration(days: 7)).isBefore(_maxDay);

  Future<void> _shift(int days) async {
    if (days < 0 && !_canGoPrev || days > 0 && !_canGoNext) return;
    _windowStart = _windowStart.add(Duration(days: days));
    _selectedDayIndex = 0;
    await _maybeRefetch();
  }

  Future<void> _maybeRefetch() async {
    final mid = _windowStart.add(const Duration(days: 3));
    final midMonth = DateTime(mid.year, mid.month);
    if (midMonth != _fetchedMonth) {
      _fetchedMonth = midMonth;
      _updateDateRange(midMonth);
    }
    state = AsyncValue.data(_buildState(_cachedItems));
    final items = await ref
        .read(calendarServiceProvider)
        .getCalendarItems(
          start: _startDate,
          end: _endDate,
          includeUnmonitored: includeUnmonitored,
        );
    state = AsyncValue.data(_buildState(items));
  }

  void _updateDateRange(DateTime month) {
    _startDate = DateTime(month.year, month.month - 1);
    _endDate = DateTime(month.year, month.month + 2, 0, 23, 59, 59);
  }

  CalendarHomeState _buildState(List<CalendarItem> items) {
    _cachedItems = items;
    final days = _buildDays(items);
    return CalendarHomeState(
      days: days,
      entries: _buildEntriesForDay(items, days[_selectedDayIndex.clamp(0, 6)]),
      windowLabel: _windowLabel(),
      canGoPrev: _canGoPrev,
      canGoNext: _canGoNext,
      selectedDayIndex: _selectedDayIndex,
    );
  }

  List<CalendarDay> _buildDays(List<CalendarItem> items) {
    final eventDates = {
      for (final item in items)
        if (item.airDate != null) _dateKey(item.airDate!),
    };

    return List.generate(7, (i) {
      final date = _windowStart.add(Duration(days: i));
      return CalendarDay(
        day: date.day,
        date: date,
        weekdayLabel: _weekdayLabels[(date.weekday - 1) % 7],
        isToday: date == _today,
        hasEvents: eventDates.contains(_dateKey(date)),
      );
    });
  }

  List<CalendarEpisodeEntry> _buildEntriesForDay(
    List<CalendarItem> items,
    CalendarDay day,
  ) {
    final now = DateTime.now();
    return items
        .where(
          (item) =>
              item.airDate != null &&
              _dateKey(item.airDate!) == _dateKey(day.date),
        )
        .map((item) => _toEntry(item, now))
        .toList();
  }

  CalendarEpisodeEntry _toEntry(CalendarItem item, DateTime now) {
    return CalendarEpisodeEntry(
      title: (item.isRadarr ? item.title : (item.seriesTitle ?? item.title))
          .toUpperCase(),
      seasonEpisode: item.isRadarr
          ? 'MOVIE'
          : (item.episodeNumberFormatted ?? 'EPISODE'),
      timeInfo: item.airDate != null
          ? DateFormat('HH:mm · MMM d').format(item.airDate!)
          : 'TBA',
      posterUrl: item.posterPath,
      status: _statusFor(item, now),
    );
  }

  EpisodeStatus _statusFor(CalendarItem item, DateTime now) {
    if (item.hasFile) return EpisodeStatus.hasFile;
    if (item.airDate != null && item.airDate!.isBefore(now)) {
      return EpisodeStatus.available;
    }
    return EpisodeStatus.upcoming;
  }

  String _windowLabel() {
    final end = _windowStart.add(const Duration(days: 6));
    final sameMonthYear =
        _windowStart.month == end.month && _windowStart.year == end.year;
    return sameMonthYear
        ? DateFormat('MMMM yyyy').format(_windowStart).toUpperCase()
        : '${DateFormat('MMM').format(_windowStart)} ${DateFormat('MMM yyyy').format(end)}'
              .toUpperCase();
  }

  static String _dateKey(DateTime d) => '${d.year}-${d.month}-${d.day}';
  static DateTime _dateOnly(DateTime d) => DateTime(d.year, d.month, d.day);
  static DateTime _mondayOf(DateTime d) =>
      d.subtract(Duration(days: d.weekday - 1));
}

final calendarHomeController =
    AsyncNotifierProvider<CalendarHomeController, CalendarHomeState>(
      CalendarHomeController.new,
    );
