import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/widgets/info_grid.dart';
import 'package:client/core/widgets/section_title.dart';
import 'package:client/features/sonarr/provider/series_detail_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesDetailValue = ref.watch(seriesDetailProvider(series.id!));
    final theme = Theme.of(context);

    return seriesDetailValue.when(
      data: (seriesDetails) {
        final seriesDetail = seriesDetails.series;
        final details = seriesDetails.imdbDetails;
        final fanartUrl = _getImageUrl(seriesDetail, coverType: 'fanart');
        final posterUrl = _getImageUrl(seriesDetail, coverType: 'poster');

        return Scaffold(
          body: CustomScrollView(
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
                        const Shadow(blurRadius: 4, color: Colors.black54),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  details['title'] ?? seriesDetail.title,
                                  style: theme.textTheme.headlineSmall
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                if (details['originalTitle'] != null &&
                                    details['originalTitle'] !=
                                        details['title'])
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
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
                                        ?.copyWith(fontStyle: FontStyle.italic),
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
                      const SectionTitle('Plot'),
                      const SizedBox(height: 8.0),
                      Text(
                        details['plot'] ?? 'No plot summary available.',
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 24.0),
                      InfoGrid({
                        'Status': seriesDetail.status,
                        'IMDb ID': seriesDetail.imdbId,
                        'ID': seriesDetail.id?.toString(),
                        'TVDB ID': seriesDetail.tvdbId?.toString(),
                      }),
                      const SizedBox(height: 24.0),
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
          error: err.toString(),
          onRetry: () => ref.refresh(seriesDetailProvider(series.id!)),
        ),
      ),
    );
  }
}
