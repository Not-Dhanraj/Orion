import 'package:client/src/features/calendar/domain/calendar_day.dart';
import 'package:client/src/features/calendar/domain/calendar_episode_entry.dart';

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
  }) {
    return CalendarPageState(
      days: days ?? this.days,
      entries: entries ?? this.entries,
      windowLabel: windowLabel ?? this.windowLabel,
      canGoPrev: canGoPrev ?? this.canGoPrev,
      canGoNext: canGoNext ?? this.canGoNext,
      selectedDayIndex: selectedDayIndex ?? this.selectedDayIndex,
    );
  }
}
