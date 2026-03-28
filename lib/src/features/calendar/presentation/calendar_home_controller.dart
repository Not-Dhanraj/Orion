import 'package:client/src/features/calendar/application/calendar_service.dart';
import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:client/src/features/calendar/domain/calendar_ui_models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final calendarHomeControllerProvider =
    AsyncNotifierProvider<CalendarHomeController, CalendarHomeState>(
      CalendarHomeController.new,
    );

class CalendarHomeState {
  final List<CalendarDay> days;
  final List<CalendarEpisodeEntry> entries;
  final String windowLabel;
  final bool canGoPrev;
  final bool canGoNext;
  final int selectedDayIndex;

  const CalendarHomeState({
    required this.days,
    required this.entries,
    required this.windowLabel,
    required this.canGoPrev,
    required this.canGoNext,
    required this.selectedDayIndex,
  });

  CalendarHomeState copyWith({
    List<CalendarDay>? days,
    List<CalendarEpisodeEntry>? entries,
    String? windowLabel,
    bool? canGoPrev,
    bool? canGoNext,
    int? selectedDayIndex,
  }) => CalendarHomeState(
    days: days ?? this.days,
    entries: entries ?? this.entries,
    windowLabel: windowLabel ?? this.windowLabel,
    canGoPrev: canGoPrev ?? this.canGoPrev,
    canGoNext: canGoNext ?? this.canGoNext,
    selectedDayIndex: selectedDayIndex ?? this.selectedDayIndex,
  );
}

class CalendarHomeController extends AsyncNotifier<CalendarHomeState> {
  static final _today = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
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
    // Select today's position: Mon=0, Tue=1, … Sun=6
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

  Future<void> shiftBack() async {
    if (!_canGoPrev) return;
    _windowStart = _windowStart.subtract(const Duration(days: 7));
    _selectedDayIndex = 0;
    await _maybeRefetch();
  }

  Future<void> shiftForward() async {
    if (!_canGoNext) return;
    _windowStart = _windowStart.add(const Duration(days: 7));
    _selectedDayIndex = 0;
    await _maybeRefetch();
  }

  bool get _canGoPrev => _windowStart.isAfter(_minDay);
  bool get _canGoNext =>
      _windowStart.add(const Duration(days: 7)).isBefore(_maxDay);

  Future<void> _maybeRefetch() async {
    final mid = _windowStart.add(const Duration(days: 3));
    final midMonth = DateTime(mid.year, mid.month);
    if (midMonth != _fetchedMonth) {
      _fetchedMonth = midMonth;
      _updateDateRange(midMonth);
    }

    state = AsyncValue.data(_buildState(_cachedItems));

    await refreshCalendar();
  }

  void _updateDateRange(DateTime month) {
    final prev = DateTime(month.year, month.month - 1);
    _startDate = DateTime(prev.year, prev.month, 1);
    final next = DateTime(month.year, month.month + 1);
    _endDate = DateTime(next.year, next.month + 1, 0, 23, 59, 59);
  }

  CalendarHomeState _buildState(List<CalendarItem> items) {
    _cachedItems = items;
    final days = _buildDays(items);
    final selectedDay = days[_selectedDayIndex.clamp(0, 6)];
    return CalendarHomeState(
      days: days,
      entries: _buildEntriesForDay(items, selectedDay),
      windowLabel: _windowLabel(),
      canGoPrev: _canGoPrev,
      canGoNext: _canGoNext,
      selectedDayIndex: _selectedDayIndex,
    );
  }

  List<CalendarDay> _buildDays(List<CalendarItem> items) {
    final eventDates = <String>{
      for (final item in items)
        if (item.airDate != null)
          '${item.airDate!.year}-${item.airDate!.month}-${item.airDate!.day}',
    };

    return List.generate(7, (i) {
      final date = _windowStart.add(Duration(days: i));
      final weekday = (date.weekday - 1) % 7;
      return CalendarDay(
        day: date.day,
        date: date,
        weekdayLabel: _weekdayLabels[weekday],
        isToday: date == _today,
        hasEvents: eventDates.contains(
          '${date.year}-${date.month}-${date.day}',
        ),
      );
    });
  }

  List<CalendarEpisodeEntry> _buildEntriesForDay(
    List<CalendarItem> items,
    CalendarDay day,
  ) {
    final now = DateTime.now();
    return items
        .where((item) {
          final d = item.airDate;
          return d != null &&
              d.year == day.date.year &&
              d.month == day.date.month &&
              d.day == day.date.day;
        })
        .map((item) => _toEntry(item, now))
        .toList();
  }

  CalendarEpisodeEntry _toEntry(CalendarItem item, DateTime now) {
    final EpisodeStatus status;
    if (item.hasFile) {
      status = EpisodeStatus.watched;
    } else if (item.airDate != null && item.airDate!.isBefore(now)) {
      status = EpisodeStatus.available;
    } else {
      status = EpisodeStatus.upcoming;
    }

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
      status: status,
    );
  }

  String _windowLabel() {
    final end = _windowStart.add(const Duration(days: 6));
    if (_windowStart.month == end.month && _windowStart.year == end.year) {
      return DateFormat('MMMM_yyyy').format(_windowStart).toUpperCase();
    }
    return '${DateFormat('MMM').format(_windowStart)}_${DateFormat('MMM_yyyy').format(end)}'
        .toUpperCase();
  }

  static DateTime _mondayOf(DateTime d) =>
      d.subtract(Duration(days: d.weekday - 1));
}
