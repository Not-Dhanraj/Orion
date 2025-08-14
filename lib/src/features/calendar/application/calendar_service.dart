import 'package:client/src/core/application/api_provider.dart';
import 'package:client/src/core/application/enabled_provider.dart';
import 'package:client/src/features/calendar/data/radarr_calendar_repository.dart';
import 'package:client/src/features/calendar/data/sonarr_calendar_repository.dart';
import 'package:client/src/features/calendar/domain/calendar_item.dart';
import 'package:client/src/exceptions/repository_exception.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalendarService {
  final RadarrCalendarRepository? radarrRepo;
  final SonarrCalendarRepository? sonarrRepo;

  CalendarService(Ref ref, {this.radarrRepo, this.sonarrRepo});

  bool get isRadarrEnabled => radarrRepo != null;

  bool get isSonarrEnabled => sonarrRepo != null;

  Future<List<CalendarItem>> getCalendarItems({
    DateTime? start,
    DateTime? end,
    bool includeUnmonitored = false,
  }) async {
    final startDate = start ?? DateTime.now().subtract(const Duration(days: 7));
    final endDate = end ?? DateTime.now().add(const Duration(days: 30));

    final startDateUtc = startDate.toUtc();
    final endDateUtc = endDate.toUtc();

    final List<CalendarItem> combinedCalendar = [];

    if (isRadarrEnabled) {
      try {
        final radarrCalendar = await radarrRepo!.getCalendar(
          start: startDateUtc,
          end: endDateUtc,
          includeUnmonitored: includeUnmonitored,
        );

        combinedCalendar.addAll(
          radarrCalendar.map((item) => CalendarItem.fromRadarr(item)),
        );
      } catch (e, stackTrace) {
        throw RepositoryException(
          'Error fetching Radarr calendar',
          error: e,
          stackTrace: stackTrace,
        );
      }
    }

    if (isSonarrEnabled) {
      try {
        final sonarrCalendar = await sonarrRepo!.getCalendar(
          start: startDateUtc,
          end: endDateUtc,
          includeUnmonitored: includeUnmonitored,
          includeSeries: true,
          includeEpisodeFile: true,
        );

        combinedCalendar.addAll(
          sonarrCalendar.map((item) => CalendarItem.fromSonarr(item)),
        );
      } catch (e, stackTrace) {
        throw RepositoryException(
          'Error fetching Sonarr calendar',
          error: e,
          stackTrace: stackTrace,
        );
      }
    }

    combinedCalendar.sort((a, b) {
      if (a.airDate == null) return 1;
      if (b.airDate == null) return -1;
      return a.airDate!.compareTo(b.airDate!);
    });

    return combinedCalendar;
  }
}

final calendarServiceProvider = Provider<CalendarService>((ref) {
  final enabled = ref.watch(enabledNotifierProvider);

  RadarrCalendarRepository? radarrRepo;
  SonarrCalendarRepository? sonarrRepo;

  if (enabled.radarr) {
    final radarrApi = ref.watch(moviesApiProvider);
    radarrRepo = RadarrCalendarRepository(radarrApi);
  }

  if (enabled.sonarr) {
    final sonarrApi = ref.watch(seriesApiProvider);
    sonarrRepo = SonarrCalendarRepository(sonarrApi);
  }

  return CalendarService(ref, radarrRepo: radarrRepo, sonarrRepo: sonarrRepo);
});
