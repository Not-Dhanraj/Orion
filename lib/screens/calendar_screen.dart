import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sonarr_flutter/sonarr.dart' as sonarr;
import 'package:radarr_flutter/radarr.dart' as radarr;
import 'package:client/api/api_client.dart';

final sonarrCalendarProvider = FutureProvider<List<sonarr.SonarrEpisode>>((
  ref,
) async {
  final sonarr = ref.watch(sonarrProvider);
  final start = DateTime.now();
  final end = start.add(const Duration(days: 7));
  return await sonarr.getCalendar(start, end);
});

final radarrCalendarProvider = FutureProvider<List<radarr.RadarrMovie>>((
  ref,
) async {
  final radarr = ref.watch(radarrProvider);
  final start = DateTime.now();
  final end = start.add(const Duration(days: 7));
  return await radarr.getCalendar(start, end);
});

class CalendarScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sonarrCalendar = ref.watch(sonarrCalendarProvider);
    final radarrCalendar = ref.watch(radarrCalendarProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Calendar')),
      body: sonarrCalendar.when(
        data: (sonarrEpisodes) {
          return radarrCalendar.when(
            data: (radarrMovies) {
              final items = [
                ...sonarrEpisodes.map(
                  (e) => CalendarItem(
                    title: e.title ?? 'Unknown Series',
                    subtitle: e.title ?? 'Unknown Episode',
                    date: e.airDateUtc,
                  ),
                ),
                ...radarrMovies.map(
                  (m) => CalendarItem(
                    title: m.title ?? 'Unknown Movie',
                    subtitle: '',
                    date: m.inCinemas,
                  ),
                ),
              ];
              items.sort(
                (a, b) => a.date?.compareTo(b.date ?? DateTime(0)) ?? 0,
              );

              return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    title: Text(item.title),
                    subtitle: Text(item.subtitle),
                    trailing: Text(
                      item.date != null
                          ? DateFormat.yMMMd().format(item.date!)
                          : 'No Date',
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error: $err')),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}

class CalendarItem {
  final String title;
  final String subtitle;
  final DateTime? date;

  CalendarItem({required this.title, required this.subtitle, this.date});
}
