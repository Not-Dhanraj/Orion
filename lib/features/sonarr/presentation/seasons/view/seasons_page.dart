import 'package:client/features/sonarr/data/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/season_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeasonsPage extends ConsumerWidget {
  final SonarrSeries series;
  
  const SeasonsPage({super.key, required this.series});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(series.id!));
    
    return Scaffold(
      appBar: AppBar(
        title: Text('${series.title} - Seasons'),
        centerTitle: true,
      ),
      body: episodesAsyncValue.when(
        data: (episodes) {
          // Get unique season numbers
          final seasonNumbers = episodes
              .map((e) => e.seasonNumber)
              .toSet()
              .where((s) => s != null && s > 0) // Filter out specials (season 0)
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
              return SeasonCard(
                seriesId: series.id!,
                seasonNumber: seasonNumber!,
                seasonName: 'Season ${seasonNumber}',
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
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
                onPressed: () => ref.refresh(seriesEpisodesProvider(series.id!)),
                child: const Text('Try Again'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
