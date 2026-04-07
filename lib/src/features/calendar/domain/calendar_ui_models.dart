enum EpisodeStatus { upcoming, available, hasFile }

class CalendarDay {
  final int day;
  final String weekdayLabel;
  final bool isToday;
  final bool hasEvents;
  final DateTime date;

  const CalendarDay({
    required this.day,
    required this.weekdayLabel,
    required this.date,
    this.isToday = false,
    this.hasEvents = false,
  });
}

class CalendarEpisodeEntry {
  final String title;
  final String seasonEpisode;
  final String timeInfo;
  final String? posterUrl;
  final EpisodeStatus status;

  const CalendarEpisodeEntry({
    required this.title,
    required this.seasonEpisode,
    required this.timeInfo,
    this.posterUrl,
    required this.status,
  });
}

class CalendarPageState {
  final List<CalendarDay> days;
  final List<CalendarEpisodeEntry> entries;
  final String windowLabel;
  final bool canGoPrev;
  final bool canGoNext;
  final int selectedDayIndex;

  const CalendarPageState({
    required this.days,
    required this.entries,
    required this.windowLabel,
    required this.canGoPrev,
    required this.canGoNext,
    required this.selectedDayIndex,
  });

  CalendarPageState copyWith({
    List<CalendarDay>? days,
    List<CalendarEpisodeEntry>? entries,
    String? windowLabel,
    bool? canGoPrev,
    bool? canGoNext,
    int? selectedDayIndex,
  }) => CalendarPageState(
    days: days ?? this.days,
    entries: entries ?? this.entries,
    windowLabel: windowLabel ?? this.windowLabel,
    canGoPrev: canGoPrev ?? this.canGoPrev,
    canGoNext: canGoNext ?? this.canGoNext,
    selectedDayIndex: selectedDayIndex ?? this.selectedDayIndex,
  );
}
