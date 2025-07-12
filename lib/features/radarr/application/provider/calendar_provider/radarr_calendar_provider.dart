import 'package:client/core/api/api_client.dart';
import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final radarrCalendarProvider = FutureProvider<List<CalendarItem>>((ref) async {
  final radarrApi = ref.watch(radarrProvider);

  // Define the date range for the calendar
  // Getting 30 days before and 60 days ahead for a good range
  final now = DateTime.now();
  final start = now.subtract(const Duration(days: 30));
  final end = now.add(const Duration(days: 120));

  // Get calendar movies using the new API method
  final calendarMovies = await radarrApi.calendar.getCalendar(
    start: start,
    end: end,
  );

  // Convert to calendar items
  return calendarMovies.map((movie) {
    // Choose the most relevant date
    DateTime? mostRelevantDate;
    String subtitle = 'Unknown Release';

    // Prioritize physical release -> digital release -> in cinemas
    if (movie.physicalRelease != null) {
      mostRelevantDate = movie.physicalRelease;
      subtitle = 'Physical Release';
    } else if (movie.digitalRelease != null) {
      mostRelevantDate = movie.digitalRelease;
      subtitle = 'Digital Release';
    } else if (movie.inCinemas != null) {
      mostRelevantDate = movie.inCinemas;
      subtitle = 'In Cinemas';
    }

    return CalendarItem(
      title: movie.title ?? 'Unknown Movie',
      subtitle: subtitle,
      date: mostRelevantDate,
      // We don't have season/episode for movies, so setting to null
      seasonNumber: null,
      episodeNumber: null,
    );
  }).toList();
});
