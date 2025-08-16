import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:intl/intl.dart';

class CalendarEventsWidget extends ConsumerWidget {
  final List<CalendarItem> events;
  final bool showDate;

  const CalendarEventsWidget({
    super.key,
    required this.events,
    this.showDate = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (events.isEmpty) {
      return const SizedBox.shrink();
    }

    return SliverMasonryGrid.extent(
      maxCrossAxisExtent: 700,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      childCount: events.length,
      itemBuilder: (context, index) {
        return CalendarEventCard(event: events[index], showDate: showDate);
      },
    );
  }
}

class CalendarEventCard extends StatelessWidget {
  final CalendarItem event;
  final bool showDate;

  const CalendarEventCard({
    super.key,
    required this.event,
    this.showDate = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat('EEE, MMM d');

    final bool isMovie = event.isRadarr;
    final IconData typeIcon = isMovie
        ? TablerIcons.movie
        : TablerIcons.device_tv;
    final Color typeColor = isMovie ? Colors.orange : Colors.blue;

    IconData statusIcon = TablerIcons.calendar;
    Color statusColor = theme.colorScheme.primary;
    String statusText = 'Upcoming';

    if (event.hasFile) {
      statusIcon = TablerIcons.check;
      statusColor = Colors.green;
      statusText = 'Downloaded';
    } else if (!event.monitored) {
      statusIcon = TablerIcons.eye_off;
      statusColor = Colors.grey;
      statusText = 'Unmonitored';
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(typeIcon, size: 16, color: typeColor),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    event.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            if (event.overview.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                event.overview,
                style: theme.textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],

            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (showDate && event.airDate != null)
                  Row(
                    children: [
                      const Icon(TablerIcons.calendar, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        dateFormat.format(event.airDate!),
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  )
                else
                  const SizedBox.shrink(),

                Row(
                  children: [
                    Icon(statusIcon, size: 14, color: statusColor),
                    const SizedBox(width: 4),
                    Text(
                      statusText,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: statusColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            if (!isMovie &&
                event.seasonNumber != null &&
                event.episodeNumber != null) ...[
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(TablerIcons.device_tv_old, size: 14),
                  const SizedBox(width: 4),
                  Text(
                    'S${event.seasonNumber.toString().padLeft(2, '0')}E${event.episodeNumber.toString().padLeft(2, '0')}',
                    style: theme.textTheme.bodySmall,
                  ),
                  if (event.seriesTitle != null) ...[
                    const SizedBox(width: 4),
                    const Text('•'),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        event.seriesTitle!,
                        style: theme.textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
