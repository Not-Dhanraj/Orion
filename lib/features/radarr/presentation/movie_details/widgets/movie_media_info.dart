import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieMediaInfo extends StatelessWidget {
  final RadarrMovie movie;

  const MovieMediaInfo({super.key, required this.movie});

  String _formatDate(DateTime? date) {
    if (date == null) return 'Unknown';
    return '${date.day}/${date.month}/${date.year}';
  }

  String _formatFileSize(int bytes) {
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    var i = 0;
    double size = bytes.toDouble();
    while (size > 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }
    return '${size.toStringAsFixed(2)} ${suffixes[i]}';
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
  }) {
    final theme = Theme.of(context);

    return Container(
      constraints: const BoxConstraints(minWidth: 160),
      child: Card(
        elevation: 0,
        color: theme.colorScheme.surfaceContainerLowest,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, size: 18, color: theme.colorScheme.secondary),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: theme.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: theme.textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: EdgeInsets.zero,
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withOpacity(0.2),
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

            // Grid of media information
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                // Physical or digital release date
                if (movie.physicalRelease != null ||
                    movie.digitalRelease != null)
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

                // Quality profile
                if (movie.qualityProfileId != null)
                  _buildInfoCard(
                    context,
                    title: 'Quality Profile',
                    value: movie.qualityProfileId.toString(),
                    icon: Icons.high_quality,
                  ),

                // Monitored status
                _buildInfoCard(
                  context,
                  title: 'Monitored',
                  value: movie.monitored == true ? 'Yes' : 'No',
                  icon: Icons.monitor,
                ),

                // Video codec information
                if (movie.movieFile?.mediaInfo?.videoCodec != null)
                  _buildInfoCard(
                    context,
                    title: 'Video Codec',
                    value: movie.movieFile!.mediaInfo!.videoCodec!,
                    icon: Icons.videocam,
                  ),

                // Audio information
                if (movie.movieFile?.mediaInfo?.audioCodec != null)
                  _buildInfoCard(
                    context,
                    title: 'Audio',
                    value: movie.movieFile!.mediaInfo!.audioCodec!,
                    icon: Icons.volume_up,
                  ),

                // Resolution
                if (movie.movieFile?.mediaInfo?.resolution != null)
                  _buildInfoCard(
                    context,
                    title: 'Resolution',
                    value: movie.movieFile!.mediaInfo!.resolution!,
                    icon: Icons.high_quality,
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
        ),
      ),
    );
  }
}
