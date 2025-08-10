import 'package:client/src/shared/widgets/custom_switch_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieMonitoringOptions extends ConsumerWidget {
  final MovieResource movie;
  final Function(MovieResource) onMovieChanged;

  const MovieMonitoringOptions({
    super.key,
    required this.movie,
    required this.onMovieChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final currentMonitored = movie.monitored ?? false;

    return Card(
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outline.withAlpha(30),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer.withAlpha(100),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.monitor,
                      size: 20,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Monitoring Options',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomSwitchTile(
              title: 'Monitor movie',
              subtitle:
                  'When enabled, Radarr will automatically search for this movie and download it when available.',
              value: currentMonitored,
              onChanged: (bool value) {
                final updatedMovie = movie.rebuild((m) => m..monitored = value);
                onMovieChanged(updatedMovie);
              },
            ),
            const SizedBox(height: 8),
            Text(
              'When a movie is monitored, Radarr will automatically search for and download it according to your quality settings.',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
