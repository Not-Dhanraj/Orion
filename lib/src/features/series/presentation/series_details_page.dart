import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesDetailsPage extends ConsumerStatefulWidget {
  final SeriesResource series;
  const SeriesDetailsPage({super.key, required this.series});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeriesDetailsPageState();
}

class _SeriesDetailsPageState extends ConsumerState<SeriesDetailsPage> {
  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context);
    final series = widget.series;
    final posterUrl =
        series.images
            ?.firstWhere(
              (image) => image.coverType == MediaCoverTypes.poster,
              orElse: () => MediaCover(),
            )
            .remoteUrl ??
        '';
    final isMonitored = series.monitored ?? false;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            title: Text("Series Details"),
            floating: true,
            snap: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(14),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: posterUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          series.title ?? 'Unknown Series',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),

                        const SizedBox(height: 8),
                        Text(
                          'Original Language: ${series.originalLanguage?.name ?? 'Unknown'}',
                          textAlign: TextAlign.left,
                          style: textTheme.labelLarge?.copyWith(
                            color: textTheme.labelLarge?.color
                                ?.withCustomOpacity(0.8),
                          ),
                        ),
                        Text(
                          '${series.status?.name.capitalizeByWord() ?? 'Unknown'}, ${isMonitored ? 'Monitored' : 'Not Monitored'}',
                          textAlign: TextAlign.left,
                          style: textTheme.labelLarge?.copyWith(
                            color: textTheme.labelLarge?.color
                                ?.withCustomOpacity(0.8),
                          ),
                        ),
                        SizedBox(height: 12),

                        SizedBox(height: 8),

                        Card(
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          elevation: 3,
                          shadowColor: theme.colorScheme.shadow
                              .withCustomOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme
                                            .primaryContainer
                                            .withCustomOpacity(0.4),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.description_outlined,
                                        color: theme
                                            .colorScheme
                                            .onPrimaryContainer,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 12.0),
                                    Text(
                                      'Overview',
                                      style: theme.textTheme.titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: theme.colorScheme.onSurface,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16.0),
                                Text(
                                  series.overview ??
                                      "No Plot Summary Available",
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    height: 1.5,
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Card(
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          elevation: 3,
                          shadowColor: theme.colorScheme.shadow
                              .withCustomOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme
                                            .secondaryContainer,
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: [
                                          BoxShadow(
                                            color: theme.colorScheme.shadow
                                                .withCustomOpacity(0.15),
                                            blurRadius: 4,
                                            offset: const Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.video_library_rounded,
                                        color: theme
                                            .colorScheme
                                            .onSecondaryContainer,
                                        size: 24,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'View Seasons & Episodes',
                                            style: theme.textTheme.titleMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: theme
                                                      .colorScheme
                                                      .onSurface,
                                                ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            'Browse all episodes by season',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                  color: theme
                                                      .colorScheme
                                                      .onSurfaceVariant,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme
                                            .primaryContainer
                                            .withCustomOpacity(0.4),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.chevron_right,
                                        color: theme.colorScheme.primary,
                                      ),
                                    ),
                                  ],
                                ),
                                if (series.seasons?.isNotEmpty == true) ...[
                                  const SizedBox(height: 16),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme
                                          .surfaceContainerHighest
                                          .withCustomOpacity(0.4),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 6,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.folder,
                                          size: 18,
                                          color: theme.colorScheme.primary,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          () {
                                            final regularSeasons =
                                                series.seasons
                                                    ?.where(
                                                      (season) =>
                                                          season.seasonNumber !=
                                                          0,
                                                    )
                                                    .toList() ??
                                                [];
                                            final specialsCount =
                                                series.seasons!.length -
                                                regularSeasons.length;

                                            String text =
                                                '${regularSeasons.length} Season${regularSeasons.length > 1 ? 's' : ''} available';
                                            if (specialsCount > 0) {
                                              text +=
                                                  ' (+ $specialsCount Special${specialsCount > 1 ? 's' : ''})';
                                            }
                                            return text;
                                          }(),
                                          style: theme.textTheme.bodyLarge
                                              ?.copyWith(
                                                fontWeight: FontWeight.w500,
                                                color:
                                                    theme.colorScheme.onSurface,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          elevation: 3,
                          shadowColor: theme.colorScheme.shadow
                              .withCustomOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color:
                                            theme.colorScheme.tertiaryContainer,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.info_outline,
                                        color: theme
                                            .colorScheme
                                            .onTertiaryContainer,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 12.0),
                                    Text(
                                      'Series Info',
                                      style: theme.textTheme.titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    _buildStatItem(
                                      context,
                                      'Type',
                                      series.seriesType?.name
                                              .toString()
                                              .capitalizeByWord() ??
                                          'Unknown',
                                      Icons.category,
                                    ),
                                    _buildStatItem(
                                      context,
                                      'Network',
                                      series.network ?? 'Unknown',
                                      Icons.wifi,
                                    ),
                                    _buildStatItem(
                                      context,
                                      'Year',
                                      '${series.year ?? 'N/A'}',
                                      Icons.calendar_today,
                                    ),
                                  ],
                                ),
                                if (series.ratings?.value != null) ...[
                                  // const SizedBox(height: 24),
                                  // const Divider(),
                                  const SizedBox(height: 16),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme
                                          .surfaceContainerHighest
                                          .withCustomOpacity(0.4),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 2,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: Colors.amber
                                                .withCustomOpacity(0.2),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.star_rounded,
                                            color: Colors.amber,
                                            size: 24,
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Text(
                                          '${series.ratings!.value}/10',
                                          style: theme.textTheme.headlineSmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                          '(${series.ratings!.votes ?? 0} votes)',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                color: theme
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          elevation: 3,
                          shadowColor: theme.colorScheme.shadow
                              .withCustomOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme
                                            .secondaryContainer,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.movie_outlined,
                                        color: theme
                                            .colorScheme
                                            .onSecondaryContainer,
                                        size: 20,
                                      ),
                                    ),
                                    const SizedBox(width: 12.0),
                                    Text(
                                      'Media Info',
                                      style: theme.textTheme.titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    _buildStatCounter(
                                      context,
                                      'Runtime',
                                      '${series.runtime ?? 0} min',
                                      Icons.timer,
                                    ),
                                    _buildStatCounter(
                                      context,
                                      'Status',
                                      series.status?.name.capitalizeByWord() ??
                                          'Unknown',
                                      Icons.live_tv,
                                    ),
                                    _buildStatCounter(
                                      context,
                                      'Quality',
                                      'Profile ${series.qualityProfileId ?? 0}',
                                      Icons.high_quality,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Container(
                                  decoration: BoxDecoration(
                                    color: theme
                                        .colorScheme
                                        .surfaceContainerHighest
                                        .withCustomOpacity(0.4),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      if (series.firstAired != null) ...[
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme
                                                    .primaryContainer,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.event,
                                                color: theme
                                                    .colorScheme
                                                    .onPrimaryContainer,
                                                size: 18,
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            Text(
                                              'First aired: ${_formatDate(series.firstAired!)}',
                                              style: theme.textTheme.bodyLarge
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                      if (series.airTime != null &&
                                          series.airTime!.isNotEmpty) ...[
                                        const SizedBox(height: 16),
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                color: theme
                                                    .colorScheme
                                                    .primaryContainer,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.access_time,
                                                color: theme
                                                    .colorScheme
                                                    .onPrimaryContainer,
                                                size: 18,
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            Text(
                                              'Air time: ${series.airTime}',
                                              style: theme.textTheme.bodyLarge
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withAlpha(20),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: theme.colorScheme.onPrimaryContainer,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCounter(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withAlpha(20),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: theme.colorScheme.onSecondaryContainer,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
