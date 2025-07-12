import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/widgets/search_bar_widget.dart';
import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:client/features/calendar/application/providers/calendar_provider.dart';
import 'package:client/features/calendar/application/providers/calendar_screen_providers.dart';
import 'package:client/features/calendar/presentation/widgets/calendar_stats_card.dart';
import 'package:client/features/calendar/presentation/widgets/calendar_view.dart';
import 'package:client/features/calendar/presentation/widgets/day_events_bottomsheet.dart';
import 'package:client/features/calendar/presentation/widgets/week_view_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:entry/entry.dart';

enum CalendarViewMode { month, week, both }

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  String _searchQuery = '';
  bool _showStats = true;
  CalendarViewMode _viewMode = CalendarViewMode.both;

  @override
  Widget build(BuildContext context) {
    final calendar = ref.watch(sonarrCalendarProvider);
    final selectedDay = ref.watch(selectedDayProvider);
    final focusedDay = ref.watch(focusedDayProvider);

    List<CalendarItem> getEventsForDay(DateTime day) {
      final normalizedDay = DateTime(day.year, day.month, day.day);
      final allEvents = ref.watch(sonarrCalendarProvider).asData?.value ?? [];

      // Filter events by search query if present
      final filteredEvents = _searchQuery.isEmpty
          ? allEvents
          : allEvents
                .where(
                  (item) =>
                      item.title.toLowerCase().contains(
                        _searchQuery.toLowerCase(),
                      ) ||
                      item.subtitle.toLowerCase().contains(
                        _searchQuery.toLowerCase(),
                      ),
                )
                .toList();

      final eventMap = <DateTime, List<CalendarItem>>{};
      for (final item in filteredEvents) {
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
              setState(() {
                _viewMode = value;
              });
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
              _showStats ? Icons.view_agenda : Icons.analytics_outlined,
            ),
            tooltip: _showStats ? 'Hide stats' : 'Show stats',
            onPressed: () {
              setState(() {
                _showStats = !_showStats;
              });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Refresh calendar data
          final _ = ref.refresh(sonarrCalendarProvider);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Calendar refreshed')));
        },
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        elevation: 4,
        child: const Icon(Icons.refresh),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surfaceVariant.withOpacity(0.3),
              colorScheme.background,
            ],
            stops: const [0.0, 0.3],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Search bar
              SearchBarWidget(
                hintText: 'Search episodes...',
                onSearch: (query) {
                  setState(() {
                    _searchQuery = query;
                  });
                },
              ),

              // Calendar content
              Expanded(
                child: calendar.when(
                  data: (items) {
                    // If searching and no results in entire calendar
                    if (_searchQuery.isNotEmpty &&
                        !items.any(
                          (item) =>
                              item.title.toLowerCase().contains(
                                _searchQuery.toLowerCase(),
                              ) ||
                              item.subtitle.toLowerCase().contains(
                                _searchQuery.toLowerCase(),
                              ),
                        )) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 64,
                              color: colorScheme.onSurfaceVariant.withOpacity(
                                0.5,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'No events found',
                              style: TextStyle(
                                color: colorScheme.onSurfaceVariant,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Try a different search term',
                              style: TextStyle(
                                color: colorScheme.onSurfaceVariant.withOpacity(
                                  0.7,
                                ),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      );
                    }

                    return ListView(
                      padding: const EdgeInsets.only(bottom: 80),
                      children: [
                        // Calendar stats
                        if (_showStats && _searchQuery.isEmpty)
                          CalendarStatsCard(events: items),

                        // Week view
                        if (_viewMode == CalendarViewMode.week ||
                            _viewMode == CalendarViewMode.both)
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

                        // Month calendar
                        if (_viewMode == CalendarViewMode.month ||
                            _viewMode == CalendarViewMode.both)
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
                      ],
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (err, stack) => ErrorView(
                    error: err,
                    onRetry: () => ref.refresh(sonarrCalendarProvider),
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
