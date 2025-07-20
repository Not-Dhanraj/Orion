import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:client/features/calendar/application/providers/calendar_provider.dart';
import 'package:client/features/radarr/application/provider/calendar_provider/radarr_calendar_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Combined calendar provider that merges Sonarr and Radarr events
final combinedCalendarProvider = FutureProvider<List<CalendarItem>>((
  ref,
) async {
  // Get calendar items from both providers
  final sonarrItems = await ref.watch(sonarrCalendarProvider.future);
  final radarrItems = await ref.watch(radarrCalendarProvider.future);

  // Combine all items
  final allItems = [...sonarrItems, ...radarrItems];

  // Sort by date
  allItems.sort((a, b) {
    if (a.date == null && b.date == null) return 0;
    if (a.date == null) return 1;
    if (b.date == null) return -1;
    return a.date!.compareTo(b.date!);
  });

  return allItems;
});
