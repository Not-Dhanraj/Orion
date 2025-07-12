import 'package:client/features/calendar/domain/calendar_item.dart';
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: TableCalendar<CalendarItem>(
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
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            weekendStyle: TextStyle(
              color: colorScheme.primary.withOpacity(0.7),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          // Custom calendar builders
          calendarBuilders: CalendarBuilders(
            // Custom marker builder to show event count
            markerBuilder: (context, date, events) {
              if (events.isEmpty) {
                return null;
              }
              return Positioned(
                bottom: 1,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  child: Center(
                    child: Text(
                      '${events.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
            // Custom selected day builder
            selectedBuilder: (context, date, _) {
              return Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      colorScheme.primary,
                      colorScheme.primary.withOpacity(0.8),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '${date.day}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
            // Custom today builder
            todayBuilder: (context, date, _) {
              return Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withOpacity(0.8),
                  shape: BoxShape.circle,
                  border: Border.all(color: colorScheme.primary, width: 1.5),
                ),
                child: Center(
                  child: Text(
                    '${date.day}',
                    style: TextStyle(
                      color: colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  CalendarStyle _calendarStyle(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return CalendarStyle(
      outsideDaysVisible: false,
      markersMaxCount: 0, // We're using custom marker builder
      canMarkersOverflow: false,
      // Not needed due to custom builders
      selectedDecoration: const BoxDecoration(),
      todayDecoration: const BoxDecoration(),
      weekendTextStyle: TextStyle(color: colorScheme.primary.withOpacity(0.7)),
      // Add more padding around days
      cellMargin: const EdgeInsets.all(4),
      cellPadding: EdgeInsets.zero,
      // Default text style for days
      defaultTextStyle: TextStyle(
        color: colorScheme.onSurface,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  HeaderStyle _headerStyle(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return HeaderStyle(
      formatButtonVisible: false,
      titleCentered: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: colorScheme.primary,
      ),
      leftChevronIcon: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.chevron_left, color: colorScheme.primary),
      ),
      rightChevronIcon: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.chevron_right, color: colorScheme.primary),
      ),
      headerPadding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withOpacity(0.2),
      ),
      headerMargin: const EdgeInsets.only(bottom: 8.0),
    );
  }
}
