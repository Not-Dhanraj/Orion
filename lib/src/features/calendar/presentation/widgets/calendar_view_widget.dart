import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:with_opacity/with_opacity.dart';

class CalendarViewWidget extends ConsumerStatefulWidget {
  final List<CalendarItem> items;
  final Function(DateTime, DateTime) onDaySelected;
  final Function(DateTime, CalendarFormat) onViewChanged;
  final DateTime focusedDay;
  final DateTime selectedDay;
  final CalendarFormat calendarFormat;

  const CalendarViewWidget({
    super.key,
    required this.items,
    required this.onDaySelected,
    required this.onViewChanged,
    required this.focusedDay,
    required this.selectedDay,
    required this.calendarFormat,
  });

  @override
  ConsumerState<CalendarViewWidget> createState() => _CalendarViewWidgetState();
}

class _CalendarViewWidgetState extends ConsumerState<CalendarViewWidget> {
  late Map<DateTime, List<CalendarItem>> _eventsCache;

  @override
  void initState() {
    super.initState();
    _buildEventsCache();
  }

  @override
  void didUpdateWidget(CalendarViewWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items != widget.items) {
      _buildEventsCache();
    }
  }

  void _buildEventsCache() {
    _eventsCache = {};
    for (final item in widget.items) {
      if (item.airDate != null) {
        final date = DateTime(
          item.airDate!.year,
          item.airDate!.month,
          item.airDate!.day,
        );

        if (_eventsCache[date] == null) {
          _eventsCache[date] = [];
        }
        _eventsCache[date]!.add(item);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final now = DateTime.now();

    return TableCalendar<CalendarItem>(
      firstDay: DateTime(now.year, now.month - 1, 1).toUtc(),
      lastDay: DateTime(now.year, now.month + 2, 0).toUtc(),
      focusedDay: widget.focusedDay,
      selectedDayPredicate: (day) => isSameDay(widget.selectedDay, day),
      calendarFormat: widget.calendarFormat,
      eventLoader: (day) {
        final normalizedDay = DateTime(day.year, day.month, day.day);
        return _eventsCache[normalizedDay] ?? [];
      },
      headerStyle: HeaderStyle(
        formatButtonVisible: true,
        formatButtonDecoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        formatButtonTextStyle: TextStyle(
          color: theme.colorScheme.onPrimaryContainer,
        ),
        titleCentered: true,
        titleTextStyle: theme.textTheme.titleMedium!,
      ),
      calendarStyle: CalendarStyle(
        markersMaxCount: 3,
        markerDecoration: BoxDecoration(
          color: theme.colorScheme.primary,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: theme.colorScheme.primaryContainer.withCustomOpacity(0.5),
          shape: BoxShape.circle,
        ),
        todayTextStyle: TextStyle(
          color: theme.colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.bold,
        ),
        selectedDecoration: BoxDecoration(
          color: theme.colorScheme.primary,
          shape: BoxShape.circle,
        ),
        outsideDaysVisible: false,
      ),
      onDaySelected: widget.onDaySelected,
      onFormatChanged: (format) {
        widget.onViewChanged(widget.focusedDay, format);
      },
      onPageChanged: (focusedDay) {
        widget.onViewChanged(focusedDay, widget.calendarFormat);
      },
    );
  }
}
