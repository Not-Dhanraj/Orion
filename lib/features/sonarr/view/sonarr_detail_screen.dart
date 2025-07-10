import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:imdb_scraper/imdb_scraper.dart';

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

  String? _getImageUrl(SonarrSeries series, {String coverType = 'poster'}) {
    try {
      final image = series.images?.firstWhere(
        (image) => image.coverType == coverType,
      );
      return image?.remoteUrl;
    } catch (e) {
      // Ignore if not found
    }
    return null;
  }

  Future<dynamic> future() async {
    final imdb = Imdb();
    return await imdb.getDetails(series.imdbId ?? '');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesDetailValue = ref.watch(seriesDetailProvider(series.id!));
    final theme = Theme.of(context);

    return seriesDetailValue.when(
      data: (seriesDetail) {
        return Scaffold(
          body: FutureBuilder(
            future: future(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return ErrorView(
                  error: snapshot.error.toString(),
                  onRetry: () => ref.refresh(seriesDetailProvider(series.id!)),
                );
              } else if (!snapshot.hasData || snapshot.data == null) {
                return const Center(child: Text('No details found.'));
              } else {
                var details = snapshot.data;
                final fanartUrl = _getImageUrl(
                  seriesDetail,
                  coverType: 'fanart',
                );
                final posterUrl = _getImageUrl(
                  seriesDetail,
                  coverType: 'poster',
                );

                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 200.0,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text(
                          seriesDetail.title ?? 'Details',
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            shadows: [
                              const Shadow(
                                blurRadius: 4,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ),
                        background: fanartUrl != null
                            ? CachedNetworkImage(
                                imageUrl: fanartUrl,
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    Container(color: Colors.grey[800]),
                                errorWidget: (context, url, error) =>
                                    Container(color: Colors.grey[800]),
                              )
                            : Container(color: Colors.grey[800]),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (posterUrl != null)
                                  SizedBox(
                                    width: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: CachedNetworkImage(
                                        imageUrl: posterUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                const SizedBox(width: 16.0),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        details['title'] ?? seriesDetail.title,
                                        style: theme.textTheme.headlineSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      if (details['originalTitle'] != null &&
                                          details['originalTitle'] !=
                                              details['title'])
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 4.0,
                                          ),
                                          child: Text(
                                            details['originalTitle'],
                                            style: theme.textTheme.titleMedium
                                                ?.copyWith(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                          ),
                                        )
                                      else
                                        Text(
                                          'No Original Title Available',
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                                fontStyle: FontStyle.italic,
                                              ),
                                        ),
                                      const SizedBox(height: 8.0),
                                      Text(
                                        '${seriesDetail.year} • ${details['genres']?.join(', ')}',
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          const SizedBox(width: 4.0),
                                          Text(
                                            '${details['ratings']?['average'] ?? 'N/A'} / 10 (${details['ratings']?['count'] ?? 0} votes)',
                                            style: theme.textTheme.bodyLarge,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24.0),
                            _buildSectionTitle(context, 'Plot'),
                            const SizedBox(height: 8.0),
                            Text(
                              details['plot'] ?? 'No plot summary available.',
                              style: theme.textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 24.0),
                            _buildInfoGrid(context, seriesDetail, details),
                            const SizedBox(height: 24.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
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

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildInfoGrid(
    BuildContext context,
    SonarrSeries series,
    dynamic details,
  ) {
    final theme = Theme.of(context);
    final items = {
      'Status': series.status,
      'IMDb ID': series.imdbId,
      'ID': series.id?.toString(),
      'TVDB ID': series.tvdbId?.toString(),
    };

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.85,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final key = items.keys.elementAt(index);
        final value = items[key] ?? 'N/A';
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(key, style: theme.textTheme.labelSmall),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
