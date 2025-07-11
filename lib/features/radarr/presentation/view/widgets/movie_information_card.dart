import 'package:client/core/widgets/info_row.dart';
import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieInformationCard extends StatelessWidget {
  final RadarrMovie movie;

  const MovieInformationCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: theme.primaryColor,
                  size: 20,
                ),
                const SizedBox(width: 8.0),
                Text(
                  'Movie Information',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            InfoRow(
              label: 'Status',
              value: movie.status?.name.toString() ?? 'Unknown',
              icon: Icons.play_circle_outline,
            ),
            if (movie.imdbId?.isNotEmpty == true)
              InfoRow(
                label: 'IMDb ID',
                value: movie.imdbId!,
                icon: Icons.movie_outlined,
              ),
            if (movie.id != null)
              InfoRow(
                label: 'Radarr ID',
                value: movie.id!.toString(),
                icon: Icons.tag,
              ),
            if (movie.tmdbId != null)
              InfoRow(
                label: 'TMDB ID',
                value: movie.tmdbId!.toString(),
                icon: Icons.local_movies_outlined,
              ),
          ],
        ),
      ),
    );
  }
}
