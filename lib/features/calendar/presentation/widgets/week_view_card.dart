import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeekViewCard extends StatelessWidget {
  final List<CalendarItem> events;
  final Function(DateTime, List<CalendarItem>) onDayTap;

  const WeekViewCard({super.key, required this.events, required this.onDayTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final today = DateTime.now();

    // Group events by day
    final weekEvents = <DateTime, List<CalendarItem>>{};
    for (int i = 0; i < 7; i++) {
      final day = DateTime(today.year, today.month, today.day + i);
      weekEvents[day] = [];
    }

    // Add events to corresponding days
    for (final event in events) {
      if (event.date == null) continue;

      final eventDate = DateTime(
        event.date!.year,
        event.date!.month,
        event.date!.day,
      );

      // Check if date is within the next 7 days
      final difference = eventDate
          .difference(DateTime(today.year, today.month, today.day))
          .inDays;

      if (difference >= 0 && difference < 7) {
        if (weekEvents[eventDate] == null) {
          weekEvents[eventDate] = [];
        }
        weekEvents[eventDate]!.add(event);
      }
    }

    // Sort dates
    final sortedDates = weekEvents.keys.toList()
      ..sort((a, b) => a.compareTo(b));

    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.view_week, color: colorScheme.primary, size: 20),
                const SizedBox(width: 8),
                Text(
                  'Next 7 Days',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sortedDates.length,
                itemBuilder: (context, index) {
                  final day = sortedDates[index];
                  final dayEvents = weekEvents[day] ?? [];
                  final isToday =
                      day.day == today.day &&
                      day.month == today.month &&
                      day.year == today.year;

                  return _DayItem(
                    date: day,
                    eventCount: dayEvents.length,
                    isToday: isToday,
                    onTap: () => onDayTap(day, dayEvents),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DayItem extends StatelessWidget {
  final DateTime date;
  final int eventCount;
  final bool isToday;
  final VoidCallback onTap;

  const _DayItem({
    required this.date,
    required this.eventCount,
    required this.isToday,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return GestureDetector(
      onTap: eventCount > 0 ? onTap : null,
      child: Container(
        width: 60,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: isToday
              ? colorScheme.primaryContainer.withOpacity(0.7)
              : colorScheme.surfaceVariant.withOpacity(0.4),
          borderRadius: BorderRadius.circular(12),
          border: isToday
              ? Border.all(color: colorScheme.primary, width: 1.5)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat('EE').format(date), // Day of week
              style: TextStyle(
                color: isToday
                    ? colorScheme.onPrimaryContainer
                    : colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              date.day.toString(),
              style: TextStyle(
                color: isToday
                    ? colorScheme.onPrimaryContainer
                    : colorScheme.onSurface,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 4),
            if (eventCount > 0)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: isToday
                      ? colorScheme.primary.withOpacity(0.2)
                      : colorScheme.primary.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  eventCount.toString(),
                  style: TextStyle(
                    color: isToday ? colorScheme.primary : colorScheme.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              )
            else
              const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
