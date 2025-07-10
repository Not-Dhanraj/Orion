import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final seriesDetailProvider = FutureProvider.family<SonarrSeries, int>((
  ref,
  seriesId,
) async {
  final sonarr = ref.watch(sonarrProvider);
  return await sonarr.series.getSeries(seriesId: seriesId);
});

class SonarrDetailScreen extends ConsumerWidget {
  final SonarrSeries series;

  const SonarrDetailScreen({super.key, required this.series});

  String? _getImageUrl(SonarrSeries series) {
    try {
      final fanart = series.images?.firstWhere(
        (image) => image.coverType == 'fanart',
      );
      if (fanart?.remoteUrl != null) {
        return fanart?.remoteUrl;
      }
    } catch (e) {
      // Ignore and try poster
    }
    try {
      final poster = series.images?.firstWhere(
        (image) => image.coverType == 'poster',
      );
      if (poster?.remoteUrl != null) {
        return poster?.remoteUrl;
      }
    } catch (e) {
      // Ignore
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesDetailValue = ref.watch(seriesDetailProvider(series.id!));

    return seriesDetailValue.when(
      data: (seriesDetail) {
        final imageUrl = _getImageUrl(seriesDetail);
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    seriesDetail.title ?? 'Unknown Title',
                    style: const TextStyle(
                      shadows: [Shadow(blurRadius: 8, color: Colors.black)],
                    ),
                  ),
                  background: imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: imageUrl,
                          fit: BoxFit.cover,
                        )
                      : Container(color: Colors.grey),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Overview',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      Text(seriesDetail.overview ?? 'No overview available.'),
                      const SizedBox(height: 16),
                      Text('Status: ${seriesDetail.status}'),
                      const SizedBox(height: 8),
                      Text('Seasons: ${seriesDetail.seasonCount}'),
                      const SizedBox(height: 8),
                      Text(
                        'Monitored: ${seriesDetail.monitored == true ? 'Yes' : 'No'}',
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Seasons',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 8),
                      if (seriesDetail.seasons != null)
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: seriesDetail.seasons!.length,
                          itemBuilder: (context, index) {
                            final season = seriesDetail.seasons![index];
                            return ListTile(
                              title: Text('Season ${season.seasonNumber}'),
                              subtitle: Text(
                                'Episodes: ${season.statistics?.episodeCount ?? 0}',
                              ),
                              trailing: Checkbox(
                                value: season.monitored,
                                onChanged: (value) async {
                                  // if (value != null) {
                                  //   final sonarr = ref.read(sonarrProvider);
                                  //   await sonarr.series.monitorSeason(
                                  //     series.id!,
                                  //     [season.seasonNumber!],
                                  //     value,
                                  //   );
                                  //   ref.refresh(
                                  //     seriesDetailProvider(series.id!),
                                  //   );
                                  // }
                                },
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (err, stack) => Scaffold(
        body: ErrorView(
          error: err,
          onRetry: () => ref.refresh(seriesDetailProvider(series.id!)),
        ),
      ),
    );
  }
}
