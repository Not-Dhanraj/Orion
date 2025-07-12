import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    final prefs = await SharedPreferences.getInstance();
    final viewModeIndex =
        prefs.getInt('calendarViewMode') ?? CalendarViewMode.both.index;
    final showStats = prefs.getBool('calendarShowStats') ?? true;

    state = state.copyWith(
      viewMode: CalendarViewMode.values[viewModeIndex],
      showStats: showStats,
    );
  }

  Future<void> setViewMode(CalendarViewMode viewMode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('calendarViewMode', viewMode.index);
    state = state.copyWith(viewMode: viewMode);
  }

  Future<void> setShowStats(bool showStats) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('calendarShowStats', showStats);
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
