import 'package:client/features/sonarr/data/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/data/series_management_provider/series_management_provider.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/season_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeasonsPage extends ConsumerWidget {
  final SonarrSeries initialSeries;

  const SeasonsPage({super.key, required this.initialSeries});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch for series updates
    final seriesAsync = ref.watch(seriesProvider(initialSeries.id!));

    // Use the most current series data, falling back to the initial data
    final currentSeries = seriesAsync.value ?? initialSeries;

    final episodesAsyncValue = ref.watch(
      seriesEpisodesProvider(currentSeries.id!),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('${currentSeries.title} - Seasons'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh data',
            onPressed: () {
              // Force refresh of the data
              ref.invalidate(seriesProvider(initialSeries.id!));
              ref.invalidate(seriesEpisodesProvider(currentSeries.id!));
              ref.invalidate(seriesEpisodeFilesProvider(currentSeries.id!));
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Pull-to-refresh functionality
          ref.invalidate(seriesProvider(initialSeries.id!));
          ref.invalidate(seriesEpisodesProvider(currentSeries.id!));
          ref.invalidate(seriesEpisodeFilesProvider(currentSeries.id!));
        },
        child: episodesAsyncValue.when(
          data: (episodes) {
            // Get unique season numbers including specials (season 0)
            final seasonNumbers =
                episodes
                    .map((e) => e.seasonNumber)
                    .toSet()
                    .where(
                      (s) =>
                          s !=
                          null, // Include all seasons including specials (season 0)
                    )
                    .toList()
                  ..sort(); // Sort seasons

            if (seasonNumbers.isEmpty) {
              return const Center(
                child: Text('No seasons found for this series'),
              );
            }

            return ListView.builder(
              itemCount: seasonNumbers.length,
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              itemBuilder: (context, index) {
                final seasonNumber = seasonNumbers[index];
                // Use "Specials" for season 0, regular season name otherwise
                return SeasonCard(
                  series: currentSeries,
                  seasonNumber: seasonNumber!,
                  seasonName: seasonNumber == 0
                      ? 'Specials'
                      : 'Season ${seasonNumber}',
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                const SizedBox(height: 16),
                Text(
                  'Error loading seasons',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () =>
                      ref.refresh(seriesEpisodesProvider(initialSeries.id!)),
                  child: const Text('Try Again'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
