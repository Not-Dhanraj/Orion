import 'package:client/features/sonarr/application/provider/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/episode_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EpisodesList extends ConsumerWidget {
  final bool isExpanded;
  final int seriesId;
  final int seasonNumber;

  const EpisodesList({
    super.key,
    required this.isExpanded,
    required this.seriesId,
    required this.seasonNumber,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodesAsyncValue = ref.watch(seriesEpisodesProvider(seriesId));

    return AnimatedCrossFade(
      firstChild: const SizedBox.shrink(),
      secondChild: Column(
        children: [
          const SizedBox(height: 8),
          episodesAsyncValue.when(
            data: (episodes) {
              final seasonEpisodes =
                  episodes.where((e) => e.seasonNumber == seasonNumber).toList();

              if (seasonEpisodes.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.video_library_outlined,
                          size: 40,
                          color: Colors.grey.withAlpha(128),
                        ),
                        const SizedBox(height: 8),
                        const Text('No episodes found for this season'),
                      ],
                    ),
                  ),
                );
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 4),
                    child: Text(
                      'Episodes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: seasonEpisodes.length,
                    separatorBuilder: (context, index) => Divider(
                      height: 1,
                      indent: 48,
                      color: Colors.grey.withAlpha(51),
                    ),
                    itemBuilder: (context, index) {
                      final episode = seasonEpisodes[index];
                      return EpisodeListItem(episode: episode);
                    },
                  ),
                ],
              );
            },
            loading: () => const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
            ),
            error: (error, stack) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red.shade300,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Error loading episodes: $error',
                    style: TextStyle(color: Colors.red.shade800),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      crossFadeState:
          isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
