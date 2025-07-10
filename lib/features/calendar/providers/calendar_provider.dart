import 'package:client/api/api_client.dart';
import 'package:client/models/calendar_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart' as sonarr;

final sonarrCalendarProvider = FutureProvider<List<CalendarItem>>((ref) async {
  final sonarrApi = ref.watch(sonarrProvider);
  final start = DateTime.now().subtract(const Duration(days: 30));
  final end = DateTime.now().add(const Duration(days: 60));

  final episodes = await sonarrApi.calendar.getCalendar(start: start, end: end);

  final seriesIds = episodes.map((e) => e.seriesId).whereType<int>().toSet();

  final series = <int, sonarr.SonarrSeries>{};
  await Future.wait(
    seriesIds.map((id) async {
      try {
        final s = await sonarrApi.series.getSeries(seriesId: id);
        series[id] = s;
      } catch (e) {
        // Log error or handle it as needed
      }
    }),
  );

  return episodes.where((e) => e.airDateUtc != null).map((episode) {
    final seriesTitle = series[episode.seriesId]?.title ?? 'Unknown Series';
    return CalendarItem(
      title: seriesTitle,
      subtitle: episode.title ?? 'Unknown Episode',
      date: episode.airDateUtc,
      seasonNumber: episode.seasonNumber,
      episodeNumber: episode.episodeNumber,
    );
  }).toList();
});
