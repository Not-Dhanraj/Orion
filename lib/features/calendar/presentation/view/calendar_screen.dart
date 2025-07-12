import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:client/features/calendar/application/providers/combined_calendar_provider.dart';
import 'package:client/features/calendar/application/providers/calendar_provider.dart';
import 'package:client/features/radarr/application/provider/calendar_provider/radarr_calendar_provider.dart';
import 'package:client/features/calendar/application/providers/calendar_screen_providers.dart';
import 'package:client/features/calendar/application/providers/calendar_preferences_provider.dart';
import 'package:client/features/calendar/presentation/widgets/calendar_stats_card.dart';
import 'package:client/features/calendar/presentation/widgets/calendar_source_stats.dart';
import 'package:client/features/calendar/presentation/widgets/calendar_view.dart';
import 'package:client/features/calendar/presentation/widgets/day_events_bottomsheet.dart';
import 'package:client/features/calendar/presentation/widgets/week_view_card.dart';
import 'package:client/features/home/application/provider/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:entry/entry.dart';

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  // Previous navigation index to detect when we navigate to calendar tab
  int? _previousNavIndex;

  @override
  void initState() {
    super.initState();
    // Refresh calendar data when screen is initially created
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _refreshCalendarData();
    });
  }

  void _refreshCalendarData() {
    // Force refresh calendar data
    ref.invalidate(sonarrCalendarProvider);
    ref.invalidate(radarrCalendarProvider);
    ref.invalidate(combinedCalendarProvider);
  }

  @override
  void dispose() {
    // Clean up resources when screen is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin

    // Watch for navigation changes to detect when calendar tab is selected
    final currentNavIndex = ref.watch(homeScreenIndexProvider);

    // Calendar tab index is 2 (third position)
    const calendarTabIndex = 2;

    // Check if we just navigated to the calendar tab
    if (_previousNavIndex != currentNavIndex &&
        currentNavIndex == calendarTabIndex) {
      // Refresh data when the Calendar tab is selected
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _refreshCalendarData();
      });
    }
    // Update previous index
    _previousNavIndex = currentNavIndex;

    final calendar = ref.watch(combinedCalendarProvider);
    final selectedDay = ref.watch(selectedDayProvider);
    final focusedDay = ref.watch(focusedDayProvider);
    final preferences = ref.watch(calendarPreferencesProvider);

    List<CalendarItem> getEventsForDay(DateTime day) {
      final normalizedDay = DateTime(day.year, day.month, day.day);
      final allEvents = ref.watch(combinedCalendarProvider).asData?.value ?? [];

      final eventMap = <DateTime, List<CalendarItem>>{};
      for (final item in allEvents) {
        if (item.date != null) {
          final date = DateTime(
            item.date!.year,
            item.date!.month,
            item.date!.day,
          );
          if (eventMap[date] == null) {
            eventMap[date] = [];
          }
          eventMap[date]!.add(item);
        }
      }
      return eventMap[normalizedDay] ?? [];
    }

    void onDaySelected(DateTime newSelectedDay, DateTime newFocusedDay) {
      ref.read(selectedDayProvider.notifier).state = newSelectedDay;
      ref.read(focusedDayProvider.notifier).state = newFocusedDay;

      final episodes = getEventsForDay(newSelectedDay);
      if (episodes.isNotEmpty) {
        showDayEventsBottomSheet(context, newSelectedDay, episodes);
      }
    }

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Calendar',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
        actions: [
          PopupMenuButton<CalendarViewMode>(
            icon: const Icon(Icons.calendar_view_month),
            tooltip: 'Change view',
            onSelected: (CalendarViewMode value) {
              ref.read(calendarPreferencesProvider.notifier).setViewMode(value);
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: CalendarViewMode.month,
                child: Text('Month view'),
              ),
              const PopupMenuItem(
                value: CalendarViewMode.week,
                child: Text('Week view'),
              ),
              const PopupMenuItem(
                value: CalendarViewMode.both,
                child: Text('Both views'),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              preferences.showStats
                  ? Icons.view_agenda
                  : Icons.analytics_outlined,
            ),
            tooltip: preferences.showStats ? 'Hide stats' : 'Show stats',
            onPressed: () {
              ref
                  .read(calendarPreferencesProvider.notifier)
                  .setShowStats(!preferences.showStats);
            },
          ),
        ],
      ),
      // floatingActionButton: Hero(
      //   tag: 'calendar_fab', // Unique hero tag for this FAB
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       // Refresh calendar data
      //       _refreshCalendarData();
      //       ScaffoldMessenger.of(
      //         context,
      //       ).showSnackBar(const SnackBar(content: Text('Calendar refreshed')));
      //     },
      //     backgroundColor: colorScheme.primaryContainer,
      //     foregroundColor: colorScheme.onPrimaryContainer,
      //     elevation: 4,
      //     child: const Icon(Icons.refresh),
      //   ),
      // ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surfaceContainerHighest.withOpacity(0.3),
              colorScheme.surface,
            ],
            stops: const [0.0, 0.3],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Calendar content
              Expanded(
                child: calendar.when(
                  data: (items) {
                    return ListView(
                      padding: const EdgeInsets.only(bottom: 80),
                      children: [
                        // Month calendar - Now at the top
                        if (preferences.viewMode == CalendarViewMode.month ||
                            preferences.viewMode == CalendarViewMode.both)
                          Entry.opacity(
                            duration: const Duration(milliseconds: 300),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: CalendarView(
                                focusedDay: focusedDay,
                                selectedDay: selectedDay,
                                getEventsForDay: getEventsForDay,
                                onDaySelected: onDaySelected,
                                onPageChanged: (newFocusedDay) =>
                                    ref
                                            .read(focusedDayProvider.notifier)
                                            .state =
                                        newFocusedDay,
                              ),
                            ),
                          ),

                        // Week view - Now in the middle
                        if (preferences.viewMode == CalendarViewMode.week ||
                            preferences.viewMode == CalendarViewMode.both)
                          Entry.opacity(
                            duration: const Duration(milliseconds: 300),
                            child: WeekViewCard(
                              events: items,
                              onDayTap: (day, events) {
                                ref.read(selectedDayProvider.notifier).state =
                                    day;
                                ref.read(focusedDayProvider.notifier).state =
                                    day;
                                if (events.isNotEmpty) {
                                  showDayEventsBottomSheet(
                                    context,
                                    day,
                                    events,
                                  );
                                }
                              },
                            ),
                          ),

                        // Calendar stats - Now at the bottom
                        if (preferences.showStats)
                          Entry.opacity(
                            duration: const Duration(milliseconds: 300),
                            child: Column(
                              children: [
                                CalendarStatsCard(events: items),
                                const SizedBox(height: 8),
                                // Separate stats for Sonarr and Radarr
                                Row(
                                  children: [
                                    Expanded(
                                      child: Consumer(
                                        builder: (context, ref, _) {
                                          final sonarrEvents = ref.watch(
                                            sonarrCalendarProvider,
                                          );
                                          return sonarrEvents.when(
                                            data: (items) =>
                                                CalendarSourceStats(
                                                  events: items,
                                                  title: 'TV Shows',
                                                ),
                                            loading: () => const SizedBox(),
                                            error: (_, __) => const SizedBox(),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Consumer(
                                        builder: (context, ref, _) {
                                          final radarrEvents = ref.watch(
                                            radarrCalendarProvider,
                                          );
                                          return radarrEvents.when(
                                            data: (items) =>
                                                CalendarSourceStats(
                                                  events: items,
                                                  title: 'Movies',
                                                ),
                                            loading: () => const SizedBox(),
                                            error: (_, __) => const SizedBox(),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => ErrorView(
                    error: err,
                    onRetry: () => _refreshCalendarData(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
