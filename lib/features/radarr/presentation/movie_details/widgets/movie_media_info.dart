import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieMediaInfo extends StatelessWidget {
  final RadarrMovie movie;

  const MovieMediaInfo({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Media Info', style: textTheme.titleLarge),
        const SizedBox(height: 16),

        // Grid of media information
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            // Physical or digital release date
            if (movie.physicalRelease != null || movie.digitalRelease != null)
              _buildInfoCard(
                context,
                title: 'Release Date',
                value: movie.physicalRelease != null
                    ? 'Physical: ${_formatDate(movie.physicalRelease)}'
                    : 'Digital: ${_formatDate(movie.digitalRelease)}',
                icon: Icons.calendar_month,
              ),

            // File size if available
            if (movie.sizeOnDisk != null && movie.sizeOnDisk! > 0)
              _buildInfoCard(
                context,
                title: 'Size',
                value: _formatFileSize(movie.sizeOnDisk!),
                icon: Icons.storage,
              ),

            // Path if available
            if (movie.path != null && movie.path!.isNotEmpty)
              _buildInfoCard(
                context,
                title: 'Path',
                value: movie.path!,
                icon: Icons.folder,
              ),

            // Movie ID from TMDB if available
            if (movie.tmdbId != null)
              _buildInfoCard(
                context,
                title: 'TMDB ID',
                value: movie.tmdbId.toString(),
                icon: Icons.numbers,
              ),

            // IMDB ID if available
            if (movie.imdbId != null && movie.imdbId!.isNotEmpty)
              _buildInfoCard(
                context,
                title: 'IMDB ID',
                value: movie.imdbId!,
                icon: Icons.movie_filter,
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: 150,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceVariant.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: colorScheme.primary),
              const SizedBox(width: 4),
              Text(
                title,
                style: textTheme.labelMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  String _formatDate(Object? dateObject) {
    if (dateObject == null) return 'Unknown';

    try {
      final dateString = dateObject.toString();
      final date = DateTime.parse(dateString);
      return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
    } catch (e) {
      return 'Unknown';
    }
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024)
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}
