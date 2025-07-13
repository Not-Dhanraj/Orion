import 'package:client/features/sonarr/application/provider/episode_provider/episode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EpisodeStats extends ConsumerWidget {
  final int seriesId;
  final int seasonNumber;

  const EpisodeStats({
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
        final downloadedEpisodes = seasonEpisodes
            .where((e) => e.hasFile == true)
            .length;

        if (totalEpisodes == 0) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            '$downloadedEpisodes/$totalEpisodes episodes',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.textTheme.bodySmall?.color?.withAlpha(178),
            ),
          ),
        );
      },
      loading: () => const SizedBox.shrink(),
      error: (e, st) => const SizedBox.shrink(),
    );
  }
}
