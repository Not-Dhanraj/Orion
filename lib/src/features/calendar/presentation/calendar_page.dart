import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:client/src/features/calendar/presentation/calendar_home_controller.dart';
import 'package:client/src/features/calendar/presentation/widgets/calendar_events_widget.dart';
import 'package:client/src/features/calendar/presentation/widgets/calendar_view_widget.dart';
import 'package:client/src/shared/widgets/error_message.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
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

  List<CalendarItem> _selectedDayEvents = [];
  List<CalendarItem> _upcomingWeekEvents = [];
  List<CalendarItem>? _allItems;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _refreshCalendar() async {
    if (_isRefreshing) return;

    setState(() => _isRefreshing = true);
    await ref.read(calendarHomeControllerProvider.notifier).refreshCalendar();

    if (mounted) {
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() {
        _isRefreshing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final calendarState = ref.watch(calendarHomeControllerProvider);

    return Entry.opacity(
      child: RefreshIndicator(
        onRefresh: _refreshCalendar,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Row(
                children: [
                  const Text('Calendar'),
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
                  icon: const Icon(TablerIcons.refresh),
                  onPressed: _refreshCalendar,
                  tooltip: 'Force refresh now',
                ),
              ],
              floating: true,
              snap: true,
            ),
            calendarState.when(
              data: (calendarItems) {
                _allItems = calendarItems;
                _selectedDayEvents = _getEventsForDay(
                  _selectedDay,
                  calendarItems,
                );
                _upcomingWeekEvents = _getUpcomingWeekEvents(calendarItems);

                return SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CalendarViewWidget(
                        items: calendarItems,
                        focusedDay: _focusedDay,
                        selectedDay: _selectedDay,
                        calendarFormat: _calendarFormat,
                        onDaySelected: _onDaySelected,
                        onViewChanged: _onCalendarFormatChanged,
                      ),
                    ),
                    if (_selectedDayEvents.isEmpty)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text('No upcoming releases for selected day.'),
                        ),
                      ),
                  ]),
                );
              },
              loading: () => const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, stackTrace) => SliverFillRemaining(
                child: ErrorMessage(
                  message: 'Error loading calendar: $error',
                  onRetry: _refreshCalendar,
                ),
              ),
            ),

            if (calendarState is AsyncData && _selectedDayEvents.isNotEmpty)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Text(
                    'Selected Day',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            if (calendarState is AsyncData && _selectedDayEvents.isNotEmpty)
              CalendarEventsWidget(events: _selectedDayEvents, showDate: false),

            if (calendarState is AsyncData && _upcomingWeekEvents.isNotEmpty)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: Text(
                    'Coming This Week',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            if (calendarState is AsyncData && _upcomingWeekEvents.isNotEmpty)
              CalendarEventsWidget(events: _upcomingWeekEvents, showDate: true),
          ],
        ),
      ),
    );
  }

  List<CalendarItem> _getEventsForDay(
    DateTime day,
    List<CalendarItem> allItems,
  ) {
    final normalizedDay = DateTime(day.year, day.month, day.day);
    return allItems.where((item) {
      if (item.airDate == null) return false;
      final itemDate = DateTime(
        item.airDate!.year,
        item.airDate!.month,
        item.airDate!.day,
      );
      return normalizedDay.isAtSameMomentAs(itemDate);
    }).toList();
  }

  List<CalendarItem> _getUpcomingWeekEvents(List<CalendarItem> allItems) {
    final today = DateTime.now();
    final startOfToday = DateTime(today.year, today.month, today.day);
    final endOfWeek = startOfToday.add(const Duration(days: 7));

    return allItems.where((item) {
      if (item.airDate == null) return false;
      final itemDate = DateTime(
        item.airDate!.year,
        item.airDate!.month,
        item.airDate!.day,
      );
      return itemDate.isAfter(startOfToday) && itemDate.isBefore(endOfWeek);
    }).toList();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;

        if (_allItems != null) {
          _selectedDayEvents = _getEventsForDay(selectedDay, _allItems!);
        }
      });
    }
  }

  void _onCalendarFormatChanged(DateTime focusedDay, CalendarFormat format) {
    setState(() {
      _calendarFormat = format;
      _focusedDay = focusedDay;
    });

    ref
        .read(calendarHomeControllerProvider.notifier)
        .updateDateRange(focusedDay);
  }
}
