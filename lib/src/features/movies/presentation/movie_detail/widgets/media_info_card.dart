import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:radarr/radarr.dart';
import 'package:with_opacity/with_opacity.dart';
import 'stat_item.dart';

class MediaInfoCard extends StatelessWidget {
  final MovieResource movie;

  const MediaInfoCard({super.key, required this.movie});

  String _formatDate(DateTime? date) {
    if (date == null) return 'Unknown';
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 0),
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.movie_outlined,
                    color: theme.colorScheme.onSecondaryContainer,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12.0),
                Text(
                  'Media Info',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StatItem(
                  label: 'Size',
                  value: movie.sizeOnDisk != null
                      ? '${(movie.sizeOnDisk! / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB'
                      : 'Unknown',
                  icon: Icons.sd_storage,
                ),
                StatItem(
                  label: 'Status',
                  value:
                      movie.status?.name.split('.').last.capitalizeByWord() ??
                      'Unknown',
                  icon: Icons.movie_filter,
                ),
                StatItem(
                  label: 'Quality',
                  value: 'Profile ${movie.qualityProfileId ?? 0}',
                  icon: Icons.high_quality,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest
                    .withCustomOpacity(0.4),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  if (movie.inCinemas != null) ...[
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.theaters,
                            color: theme.colorScheme.onPrimaryContainer,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'In Cinemas: ${_formatDate(movie.inCinemas)}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (movie.physicalRelease != null) ...[
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.inventory_2,
                            color: theme.colorScheme.onPrimaryContainer,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Physical Release: ${_formatDate(movie.physicalRelease)}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                  if (movie.digitalRelease != null) ...[
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.smartphone,
                            color: theme.colorScheme.onPrimaryContainer,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Digital Release: ${_formatDate(movie.digitalRelease)}',
                          style: theme.textTheme.bodyLarge?.copyWith(
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
    );
  }
}
