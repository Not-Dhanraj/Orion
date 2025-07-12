import 'package:client/core/api/api_client.dart';
import 'package:client/features/calendar/domain/calendar_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final radarrCalendarProvider = FutureProvider<List<CalendarItem>>((ref) async {
  final radarrApi = ref.watch(radarrProvider);

  // Get all movies
  final movies = await radarrApi.movie.getAll();

  // Filter movies that have a digital or physical release date in the future
  // or have been recently released (within last 30 days)
  final now = DateTime.now();
  final thirtyDaysAgo = now.subtract(const Duration(days: 30));
  final sixtyDaysAhead = now.add(const Duration(days: 60));

  final relevantMovies = movies.where((movie) {
    // Check dates - assuming these are already DateTime objects in the API
    final physicalReleaseDate = movie.physicalRelease;
    final digitalReleaseDate = movie.digitalRelease;
    final inTheaterDate = movie.inCinemas;

    // Check if any release date is within our timeframe
    return (physicalReleaseDate != null &&
            physicalReleaseDate.isAfter(thirtyDaysAgo) &&
            physicalReleaseDate.isBefore(sixtyDaysAhead)) ||
        (digitalReleaseDate != null &&
            digitalReleaseDate.isAfter(thirtyDaysAgo) &&
            digitalReleaseDate.isBefore(sixtyDaysAhead)) ||
        (inTheaterDate != null &&
            inTheaterDate.isAfter(thirtyDaysAgo) &&
            inTheaterDate.isBefore(sixtyDaysAhead));
  }).toList();

  // Convert to calendar items
  return relevantMovies.map((movie) {
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
