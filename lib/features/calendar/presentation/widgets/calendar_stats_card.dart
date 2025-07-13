import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:entry/entry.dart';
import 'package:intl/intl.dart';

class CalendarStatsCard extends StatelessWidget {
  final List<CalendarItem> events;

  const CalendarStatsCard({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Calculate stats
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final todayEvents = events
        .where(
          (e) =>
              e.date != null &&
              DateTime(e.date!.year, e.date!.month, e.date!.day) == today,
        )
        .toList();

    final endOfWeek = now.add(Duration(days: 7 - now.weekday));
    final thisWeekEvents = events
        .where(
          (e) =>
              e.date != null &&
              e.date!.isAfter(now) &&
              e.date!.isBefore(endOfWeek.add(const Duration(days: 1))),
        )
        .toList();

    final endOfMonth = DateTime(now.year, now.month + 1, 0);
    final thisMonthEvents = events
        .where(
          (e) =>
              e.date != null &&
              e.date!.isAfter(now) &&
              e.date!.isBefore(endOfMonth.add(const Duration(days: 1))),
        )
        .toList();

    // Count unique series (by title)
    final uniqueSeries = <String>{};
    for (final event in events.where(
      (e) => e.date != null && e.date!.isAfter(now),
    )) {
      uniqueSeries.add(event.title);
    }

    return Entry.offset(
      duration: const Duration(milliseconds: 400),
      yOffset: 20,
      child: Entry.opacity(
        duration: const Duration(milliseconds: 400),
        child: Card(
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
                  Icon(Icons.insights, color: colorScheme.primary, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Calendar Overview',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _StatItem(
                    label: 'Today',
                    count: todayEvents.length,
                    icon: Icons.today,
                    color: colorScheme.primary,
                  ),
                  _StatItem(
                    label: 'This Week',
                    count: thisWeekEvents.length,
                    icon: Icons.calendar_view_week,
                    color: colorScheme.secondary,
                  ),
                  _StatItem(
                    label: 'This Month',
                    count: thisMonthEvents.length,
                    icon: Icons.calendar_month,
                    color: colorScheme.tertiary,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 12),
              if (todayEvents.isNotEmpty) ...[
                Text(
                  'Coming Today:',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                ...todayEvents.take(3).map((e) => _UpcomingEventItem(event: e)),
                if (todayEvents.length > 3)
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '+${todayEvents.length - 3} more today',
                      style: TextStyle(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ] else ...[
                Text(
                  'Next Upcoming:',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                ...events
                    .where((e) => e.date != null && e.date!.isAfter(now))
                    .take(2)
                    .map((e) => _UpcomingEventItem(event: e)),
              ],
              const SizedBox(height: 8),
            ],
          ),
        ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final int count;
  final IconData icon;
  final Color color;

  const _StatItem({
    required this.label,
    required this.count,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.onSurface;

    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color),
          ),
          const SizedBox(height: 8),
          Text(
            count.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: color,
            ),
          ),
          Text(label, style: TextStyle(fontSize: 12, color: textColor)),
        ],
      ),
    );
  }
}

class _UpcomingEventItem extends StatelessWidget {
  final CalendarItem event;

  const _UpcomingEventItem({required this.event});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              Icons.tv,
              color: colorScheme.onPrimaryContainer,
              size: 18,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onSurface,
                  ),
                ),
                if (event.seasonNumber != null && event.episodeNumber != null)
                  Text(
                    'S${event.seasonNumber}E${event.episodeNumber} - ${event.subtitle}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
          if (event.date != null)
            Text(
              DateFormat.jm().format(event.date!),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: colorScheme.primary,
              ),
            ),
        ],
      ),
    );
  }
}
