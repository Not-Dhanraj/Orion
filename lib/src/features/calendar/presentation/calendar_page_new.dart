import 'package:client/src/features/calendar/application/calendar_service.dart';
import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:client/src/features/calendar/presentation/calendar_controller.dart';
import 'package:client/src/shared/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends ConsumerStatefulWidget {
  const CalendarPage({super.key});

  @override
  ConsumerState<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends ConsumerState<CalendarPage> {
  bool _isRefreshing = false;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // Cache for improved performance
  Map<DateTime, List<CalendarItem>> _eventsCache = {};
  List<CalendarItem> _selectedDayEvents = [];
  List<CalendarItem> _upcomingWeekEvents = [];
  List<CalendarItem>? _allItems;

  @override
  void initState() {
    super.initState();
    // Initial refresh will happen in build() via AsyncNotifier
  }

  Future<void> _refreshCalendar() async {
    if (_isRefreshing) return; // Prevent multiple refreshes

    setState(() => _isRefreshing = true);
    await ref.read(calendarControllerProvider.notifier).refreshCalendar();

    if (mounted) {
      // Add a very small delay to make sure the indicator is visible
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() {
        _isRefreshing = false;
        // Clear caches to force rebuild with new data
        _eventsCache = {};
      });
    }
  }

  // Process data in smaller chunks to avoid UI jank
  void _processEvents(List<CalendarItem> items) {
    if (_eventsCache.isNotEmpty) return;

    // Build cache in a microtask to avoid blocking UI
    Future.microtask(() {
      final Map<DateTime, List<CalendarItem>> grouped = {};

      for (final item in items) {
        if (item.airDate != null) {
          // Use date without time for grouping
          final DateTime dateKey = DateTime(
            item.airDate!.year,
            item.airDate!.month,
            item.airDate!.day,
          );

          if (!grouped.containsKey(dateKey)) {
            grouped[dateKey] = [];
          }

          grouped[dateKey]!.add(item);
        }
      }

      // Also process upcoming week events
      final now = DateTime.now();
      final weekFromNow = now.add(const Duration(days: 7));
      final weekEvents =
          items
              .where(
                (item) =>
                    item.airDate != null &&
                    item.airDate!.isAfter(now) &&
                    item.airDate!.isBefore(weekFromNow),
              )
              .toList()
            ..sort((a, b) => a.airDate!.compareTo(b.airDate!));

      if (mounted) {
        setState(() {
          _eventsCache = grouped;
          _upcomingWeekEvents = weekEvents;

          // Update selected day events
          final dateKey = DateTime(
            _selectedDay.year,
            _selectedDay.month,
            _selectedDay.day,
          );
          _selectedDayEvents = grouped[dateKey] ?? [];
        });
      }
    });
  }

  // Get events for a specific day
  List<CalendarItem> _getEventsForDay(DateTime day) {
    if (_eventsCache.isEmpty) {
      // Process events if we have allItems but cache is empty
      if (_allItems != null) {
        _processEvents(_allItems!);
      }
      return [];
    }
    final normalizedDay = DateTime(day.year, day.month, day.day);
    return _eventsCache[normalizedDay] ?? [];
  }

  // Update selected day events
  void _updateSelectedDay(DateTime day) {
    setState(() {
      _selectedDay = day;
      _selectedDayEvents = _getEventsForDay(day);
    });
  }

  @override
  Widget build(BuildContext context) {
    final calendarState = ref.watch(calendarControllerProvider);
    final calendarService = ref.watch(calendarServiceProvider);

    // Get enabled services info
    final radarrEnabled = calendarService.isRadarrEnabled;
    final sonarrEnabled = calendarService.isSonarrEnabled;
    final enabledText = _getEnabledServicesText(radarrEnabled, sonarrEnabled);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Calendar'),
            const SizedBox(width: 8),
            Text(
              DateFormat('MMMM yyyy').format(_focusedDay),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            if (_isRefreshing) ...[
              const SizedBox(width: 8),
              const SizedBox(
                width: 12,
                height: 12,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              const SizedBox(width: 8),
              Text(
                'Refreshing...',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshCalendar,
            tooltip: 'Force refresh now',
          ),
        ],
      ),
      body: Column(
        children: [
          // Show enabled services banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Text(
              'Services: $enabledText',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),

          // Main content
          Expanded(
            child: calendarState.when(
              data: (calendarItems) {
                // Store all items for reuse
                _allItems = calendarItems;

                // Process events in the background to avoid blocking UI
                _processEvents(calendarItems);

                return Column(
                  children: [
                    // Calendar widget
                    Card(
                      margin: const EdgeInsets.all(8.0),
                      child: TableCalendar<CalendarItem>(
                        firstDay: DateTime.now().subtract(
                          const Duration(days: 365),
                        ),
                        lastDay: DateTime.now().add(const Duration(days: 365)),
                        focusedDay: _focusedDay,
                        selectedDayPredicate: (day) =>
                            isSameDay(_selectedDay, day),
                        calendarFormat: _calendarFormat,
                        eventLoader: (day) => _getEventsForDay(day),
                        onDaySelected: (selectedDay, focusedDay) {
                          _updateSelectedDay(selectedDay);
                          setState(() {
                            _focusedDay = focusedDay;
                          });
                        },
                        onPageChanged: (focusedDay) {
                          // Update the controller when navigating between months
                          setState(() {
                            _focusedDay = focusedDay;
                          });

                          // Update the controller with the new focused day
                          // Do this in a microtask to avoid blocking UI
                          Future.microtask(() {
                            ref
                                .read(calendarControllerProvider.notifier)
                                .updateDateRange(focusedDay);
                          });
                        },
                        // Calendar styling
                        calendarStyle: CalendarStyle(
                          markersMaxCount: 3,
                          markerDecoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          todayDecoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                          ),
                          selectedDecoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false, // Hide format button
                          titleCentered: true,
                          leftChevronIcon: Icon(
                            Icons.chevron_left,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          rightChevronIcon: Icon(
                            Icons.chevron_right,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),

                    // Show events for selected day
                    Expanded(
                      child: Column(
                        children: [
                          // Selected day events
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Events on ${DateFormat('MMMM d, yyyy').format(_selectedDay)}',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primaryContainer,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    isSameDay(_selectedDay, DateTime.now())
                                        ? 'TODAY'
                                        : '',
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // List of events for selected day
                          Expanded(
                            flex: 2,
                            child: _buildEventList(
                              _selectedDayEvents,
                              emptyMessage: 'No events on this day',
                            ),
                          ),

                          // Divider
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0,
                            ),
                            child: Row(
                              children: [
                                const Expanded(child: Divider()),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Text(
                                    'Next 7 Days',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleSmall,
                                  ),
                                ),
                                const Expanded(child: Divider()),
                              ],
                            ),
                          ),

                          // Upcoming 7 days summary
                          Expanded(
                            flex: 3,
                            child: _buildEventList(
                              _upcomingWeekEvents,
                              emptyMessage:
                                  'No upcoming events in the next 7 days',
                              showDate: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => ErrorMessage(
                message: 'Error loading calendar: $error',
                onRetry: _refreshCalendar,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build a list of calendar events
  Widget _buildEventList(
    List<CalendarItem> events, {
    required String emptyMessage,
    bool showDate = false,
  }) {
    if (events.isEmpty) {
      return Center(
        child: Text(
          emptyMessage,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
      );
    }

    return ListView.builder(
      itemCount: events.length,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      // Use keys for better list performance
      itemBuilder: (context, index) {
        final event = events[index];
        return CalendarEventTile(
          key: ValueKey('event_${event.id}'),
          item: event,
          showDate: showDate,
        );
      },
    );
  }

  // Helper method to get text indicating which services are enabled
  String _getEnabledServicesText(bool radarrEnabled, bool sonarrEnabled) {
    if (radarrEnabled && sonarrEnabled) {
      return 'Radarr & Sonarr';
    } else if (radarrEnabled) {
      return 'Radarr only';
    } else if (sonarrEnabled) {
      return 'Sonarr only';
    } else {
      return 'None enabled';
    }
  }
}

class CalendarEventTile extends StatelessWidget {
  final CalendarItem item;
  final bool showDate;

  const CalendarEventTile({Key? key, required this.item, this.showDate = false})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Select icon based on source
    final IconData sourceIcon = item.isRadarr ? Icons.movie : Icons.tv;
    final Color sourceColor = item.isRadarr ? Colors.blue : Colors.purple;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Media type icon (movie/tv)
            Padding(
              padding: const EdgeInsets.only(top: 4, right: 8),
              child: Icon(sourceIcon, color: sourceColor, size: 20),
            ),

            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Title
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.isRadarr
                                  ? item.title
                                  : (item.seriesTitle ?? 'Unknown Series'),
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (!item.isRadarr &&
                                item.episodeNumberFormatted != null)
                              Text(
                                '${item.episodeNumberFormatted} - ${item.title}',
                                style: theme.textTheme.bodySmall,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                          ],
                        ),
                      ),

                      // Date/time if needed
                      if (showDate && item.airDate != null)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surfaceVariant,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            DateFormat('MMM d').format(item.airDate!),
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                    ],
                  ),

                  // Status indicators
                  Row(
                    children: [
                      if (item.hasFile)
                        const Icon(
                          Icons.download_done,
                          size: 14,
                          color: Colors.green,
                        )
                      else
                        Icon(
                          Icons.download_outlined,
                          size: 14,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      const SizedBox(width: 4),
                      if (item.monitored)
                        const Icon(
                          Icons.visibility,
                          size: 14,
                          color: Colors.blue,
                        )
                      else
                        Icon(
                          Icons.visibility_off,
                          size: 14,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      if (item.runtime != null) ...[
                        const SizedBox(width: 8),
                        Text(
                          '${item.runtime} min',
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
