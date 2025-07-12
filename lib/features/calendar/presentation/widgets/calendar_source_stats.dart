import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:flutter/material.dart';

class CalendarSourceStats extends StatelessWidget {
  final List<CalendarItem> events;
  final String title;

  const CalendarSourceStats({
    super.key,
    required this.events,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    // Calculate time-based stats
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);

    // Today's events
    final todayEvents = events
        .where(
          (e) =>
              e.date != null &&
              DateTime(e.date!.year, e.date!.month, e.date!.day) == today,
        )
        .length;

    // This week's events
    final endOfWeek = now.add(Duration(days: 7 - now.weekday));
    final thisWeekEvents = events
        .where(
          (e) =>
              e.date != null &&
              e.date!.isAfter(today.subtract(const Duration(days: 1))) &&
              e.date!.isBefore(endOfWeek.add(const Duration(days: 1))),
        )
        .length;

    // This month's events
    final endOfMonth = DateTime(now.year, now.month + 1, 0);
    final thisMonthEvents = events
        .where(
          (e) =>
              e.date != null &&
              e.date!.isAfter(today.subtract(const Duration(days: 1))) &&
              e.date!.isBefore(endOfMonth.add(const Duration(days: 1))),
        )
        .length;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),

            // Stats grid
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatItem(
                  context,
                  label: 'Today',
                  value: todayEvents.toString(),
                  icon: Icons.today,
                  color: colorScheme.primary,
                ),
                _buildStatItem(
                  context,
                  label: 'This Week',
                  value: thisWeekEvents.toString(),
                  icon: Icons.calendar_view_week,
                  color: colorScheme.secondary,
                ),
                _buildStatItem(
                  context,
                  label: 'This Month',
                  value: thisMonthEvents.toString(),
                  icon: Icons.calendar_month,
                  color: colorScheme.tertiary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context, {
    required String label,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
