import 'package:client/features/calendar/models/calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime selectedDay;
  final List<CalendarItem> Function(DateTime) getEventsForDay;
  final void Function(DateTime, DateTime) onDaySelected;
  final void Function(DateTime) onPageChanged;

  const CalendarView({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.getEventsForDay,
    required this.onDaySelected,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TableCalendar<CalendarItem>(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: focusedDay,
      calendarFormat: CalendarFormat.month,
      eventLoader: getEventsForDay,
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: _calendarStyle(context),
      headerStyle: _headerStyle(context),
      selectedDayPredicate: (day) => isSameDay(selectedDay, day),
      onDaySelected: onDaySelected,
      onPageChanged: onPageChanged,
    );
  }

  CalendarStyle _calendarStyle(BuildContext context) {
    final theme = Theme.of(context);
    return CalendarStyle(
      outsideDaysVisible: false,
      markerDecoration: BoxDecoration(
        color: theme.primaryColor,
        shape: BoxShape.circle,
      ),
      markersMaxCount: 3,
      canMarkersOverflow: true,
      selectedDecoration: BoxDecoration(
        color: theme.primaryColor.withAlpha(204),
        shape: BoxShape.circle,
      ),
      todayDecoration: BoxDecoration(
        color: theme.primaryColor.withAlpha(128),
        shape: BoxShape.circle,
      ),
    );
  }

  HeaderStyle _headerStyle(BuildContext context) {
    final theme = Theme.of(context);
    return HeaderStyle(
      formatButtonVisible: false,
      titleCentered: true,
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      leftChevronIcon: Icon(Icons.chevron_left, color: theme.primaryColor),
      rightChevronIcon: Icon(Icons.chevron_right, color: theme.primaryColor),
    );
  }
}
