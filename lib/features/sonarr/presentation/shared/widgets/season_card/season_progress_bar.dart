import 'package:client/features/sonarr/application/provider/episode_provider/episode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeasonProgressBar extends ConsumerWidget {
  final int seriesId;
  final int seasonNumber;

  const SeasonProgressBar({
    super.key,
    required this.seriesId,
    required this.seasonNumber,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(seriesId));
    final theme = Theme.of(context);

    return episodesAsyncValue.when(
      data: (episodes) {
        final seasonEpisodes = episodes
            .where((e) => e.seasonNumber == seasonNumber)
            .toList();
        final totalEpisodes = seasonEpisodes.length;
        if (totalEpisodes == 0) {
          return const SizedBox.shrink();
        }
        final downloadedEpisodes = seasonEpisodes
            .where((e) => e.hasFile == true)
            .length;
        final progressValue = downloadedEpisodes / totalEpisodes;

        return Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Downloads', style: theme.textTheme.bodyMedium),
                  Text(
                    '${(progressValue * 100).toInt()}%',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: progressValue > 0
                          ? theme.colorScheme.primary
                          : theme.textTheme.bodyMedium?.color,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: Colors.grey.withAlpha(51),
                  minHeight: 8,
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (e, st) => const SizedBox.shrink(),
    );
  }
}
