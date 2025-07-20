import 'package:client/core/storage/hive_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CalendarViewMode { month, week, both }

final calendarPreferencesProvider =
    StateNotifierProvider<CalendarPreferencesNotifier, CalendarPreferences>((
      ref,
    ) {
      return CalendarPreferencesNotifier();
    });

class CalendarPreferencesNotifier extends StateNotifier<CalendarPreferences> {
  CalendarPreferencesNotifier() : super(CalendarPreferences()) {
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    final box = HiveService.calendarBox;
    final viewModeIndex = box.get('calendarViewMode', defaultValue: CalendarViewMode.both.index);
    final showStats = box.get('calendarShowStats', defaultValue: true);

    state = state.copyWith(
      viewMode: CalendarViewMode.values[viewModeIndex],
      showStats: showStats,
    );
  }

  Future<void> setViewMode(CalendarViewMode viewMode) async {
    final box = HiveService.calendarBox;
    await box.put('calendarViewMode', viewMode.index);
    state = state.copyWith(viewMode: viewMode);
  }

  Future<void> setShowStats(bool showStats) async {
    final box = HiveService.calendarBox;
    await box.put('calendarShowStats', showStats);
    state = state.copyWith(showStats: showStats);
  }
}

class CalendarPreferences {
  final CalendarViewMode viewMode;
  final bool showStats;

  CalendarPreferences({
    this.viewMode = CalendarViewMode.both,
    this.showStats = true,
  });

  CalendarPreferences copyWith({CalendarViewMode? viewMode, bool? showStats}) {
    return CalendarPreferences(
      viewMode: viewMode ?? this.viewMode,
      showStats: showStats ?? this.showStats,
    );
  }
}
