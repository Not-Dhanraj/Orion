import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesHeaderCard extends StatelessWidget {
  const SeriesHeaderCard({super.key, required this.series});

  final SonarrSeriesLookup series;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(30),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Series poster
            Container(
              width: 120,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(76), // 0.3 opacity
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: _buildSeriesPoster(context),
              ),
            ),

            const SizedBox(width: 20),

            // Series details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    series.title ?? 'Unknown Title',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),

                  const SizedBox(height: 8),

                  if (series.year != null) ...[
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 16,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          series.year.toString(),
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],

                  if (series.overview != null) ...[
                    Text(
                      'Overview',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      series.overview!,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.4,
                      ),
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],

                  const SizedBox(height: 16),

                  // Series IDs
                  Wrap(
                    spacing: 12,
                    runSpacing: 8,
                    children: [
                      if (series.tvdbId != null)
                        _buildIdChip(
                          context,
                          'TVDB',
                          series.tvdbId.toString(),
                          Colors.blue,
                        ),
                      if (series.tvMazeId != null)
                        _buildIdChip(
                          context,
                          'TVMaze',
                          series.tvMazeId.toString(),
                          Colors.green,
                        ),
                      if (series.imdbId != null)
                        _buildIdChip(
                          context,
                          'IMDB',
                          series.imdbId!,
                          Colors.amber,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSeriesPoster(BuildContext context) {
    String? posterUrl;
    try {
      if (series.images != null && series.images!.isNotEmpty) {
        for (final image in series.images!) {
          if (image.coverType == 'poster') {
            posterUrl = image.remoteUrl;
            break;
          }
        }
      }
    } catch (e) {
      // Ignore errors
    }

    return posterUrl != null
        ? CachedNetworkImage(
            memCacheWidth: 300,
            imageUrl: posterUrl,
            fit: BoxFit.cover,
            errorWidget: (context, error, stackTrace) => Container(
              color: Theme.of(context).colorScheme.surfaceVariant,
              child: Icon(
                Icons.broken_image,
                size: 48,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          )
        : Container(
            color: Theme.of(context).colorScheme.surfaceVariant,
            child: Icon(
              Icons.tv,
              size: 48,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          );
  }

  Widget _buildIdChip(
    BuildContext context,
    String label,
    String id,
    Color color,
  ) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withAlpha(51), // 0.2 opacity
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.withAlpha(102), // 0.4 opacity
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            id,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
