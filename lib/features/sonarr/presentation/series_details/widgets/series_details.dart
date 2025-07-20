import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesDetails extends StatelessWidget {
  final SonarrSeries series;
  final String? posterUrl;

  const SeriesDetails({super.key, required this.series, this.posterUrl});

  @override
  Widget build(BuildContext context) {
    int getCardCount(double screenWidth) {
      return switch (screenWidth) {
        >= 1400 => 6,
        >= 1200 => 5,
        >= 900 => 4,
        >= 600 => 3,
        >= 400 => 2,
        _ => 1,
      };
    }

    final screenWidth = MediaQuery.of(context).size.width;
    final cardCount = getCardCount(screenWidth);
    final theme = Theme.of(context);

    // Calculate cache width once
    final cacheWidth = (screenWidth / (cardCount * 1.013)).toInt();
    return Card(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      elevation: 4,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (posterUrl != null)
                  Container(
                    width: 120,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withCustomOpacity(0.3),
                          blurRadius: 8.0,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Hero(
                      tag: series.id!,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: CachedNetworkImage(
                          memCacheWidth: cacheWidth,
                          imageUrl: posterUrl!,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Container(
                            color: theme.colorScheme.surfaceContainerHighest,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: theme.colorScheme.primary,
                                strokeWidth: 2,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: theme.colorScheme.surfaceContainerHighest,
                            child: const Icon(Icons.error),
                          ),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        series.title ?? '',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      if (series.alternateTitles?.isNotEmpty == true)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 4.0,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            series.alternateTitles!.last.title ?? '',
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontStyle: FontStyle.italic,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      const SizedBox(height: 12.0),
                      if (series.genres?.isNotEmpty == true)
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 4.0,
                          children: series.genres!.map((genre) {
                            return Chip(
                              label: Text(
                                genre,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              backgroundColor:
                                  theme.colorScheme.primaryContainer,
                              side: BorderSide.none,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 2,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            );
                          }).toList(),
                        ),
                      if (series.certification?.isNotEmpty == true) ...[
                        const SizedBox(height: 8.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6.0,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.errorContainer,
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: theme.colorScheme.error,
                              width: 1.0,
                            ),
                          ),
                          child: Text(
                            series.certification!,
                            style: theme.textTheme.labelMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
