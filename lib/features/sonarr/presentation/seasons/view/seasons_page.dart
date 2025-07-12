import 'package:client/features/sonarr/application/provider/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/application/provider/series_management_provider/series_management_provider.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/season_card/season_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeasonsPage extends ConsumerWidget {
  final SonarrSeries initialSeries;

  const SeasonsPage({super.key, required this.initialSeries});
  
  // Helper method to check for network-related errors
  bool _isNetworkError(Object? error) {
    if (error == null) return false;
    
    final errorString = error.toString().toLowerCase();
    return errorString.contains('connection error') || 
           errorString.contains('socket') || 
           errorString.contains('network') ||
           errorString.contains('timeout') ||
           errorString.contains('failed host lookup') ||
           errorString.contains('no address') ||
           errorString.contains('connection refused') ||
           (errorString.contains('dio') && errorString.contains('error'));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch for series updates with error handling
    final seriesAsync = ref.watch(singleSeriesProvider(initialSeries.id!));

    // Handle series data loading errors - more robust check for connection errors
    if (seriesAsync.hasError) {
      final error = seriesAsync.error;
      final bool isConnectionError = error != null && _isNetworkError(error);
                                   
      return Scaffold(
        appBar: AppBar(
          title: Text('${initialSeries.title} - Seasons'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isConnectionError
                  ? const Icon(Icons.signal_wifi_off, size: 48, color: Colors.grey)
                  : const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                isConnectionError ? 'Connection Error' : 'Error Loading Data',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                isConnectionError
                    ? 'Unable to load data. Please check your internet connection.'
                    : 'An error occurred while loading the series data: ${error.toString()}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Invalidate the provider to trigger a refresh
                  ref.invalidate(singleSeriesProvider(initialSeries.id!));
                },
                child: const Text('Try Again'),
              ),
            ],
          ),
        ),
      );
    }

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
              ref.invalidate(singleSeriesProvider(initialSeries.id!));
              ref.invalidate(seriesEpisodesProvider(currentSeries.id!));
              ref.invalidate(seriesEpisodeFilesProvider(currentSeries.id!));
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          // Pull-to-refresh functionality
          ref.invalidate(singleSeriesProvider(initialSeries.id!));
          ref.invalidate(seriesEpisodesProvider(currentSeries.id!));
          ref.invalidate(seriesEpisodeFilesProvider(currentSeries.id!));
          // Return a completed future to satisfy the RefreshIndicator
          return Future.value();
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
                      : 'Season $seasonNumber',
                );
              },
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Check for any kind of connection or network error
                _isNetworkError(error)
                    ? const Icon(
                        Icons.signal_wifi_off,
                        size: 48,
                        color: Colors.grey,
                      )
                    : const Icon(
                        Icons.error_outline,
                        size: 48,
                        color: Colors.red,
                      ),
                const SizedBox(height: 16),
                Text(
                  _isNetworkError(error)
                      ? 'Network Connection Error'
                      : 'Error loading seasons',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  _isNetworkError(error)
                      ? 'Unable to load episodes. Please check your internet connection.'
                      : error.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // Invalidate all providers to ensure fresh data
                    ref.invalidate(singleSeriesProvider(initialSeries.id!));
                    ref.invalidate(seriesEpisodesProvider(currentSeries.id!));
                    ref.invalidate(seriesEpisodeFilesProvider(currentSeries.id!));
                  },
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
