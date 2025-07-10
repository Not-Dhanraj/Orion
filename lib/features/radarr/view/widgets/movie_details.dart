import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieDetails extends StatelessWidget {
  final RadarrMovie movie;
  final String? posterUrl;

  const MovieDetails({super.key, required this.movie, this.posterUrl});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (posterUrl != null)
                Hero(
                  tag: 'poster_${movie.id}',
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 8.0,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: CachedNetworkImage(
                        imageUrl: posterUrl!,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Container(
                          height: 180,
                          color: Colors.grey[300],
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          height: 180,
                          color: Colors.grey[300],
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
                      movie.title ?? '',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    if (movie.alternateTitles?.isNotEmpty == true)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surfaceVariant,
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                        child: Text(
                          movie.alternateTitles!.last.title ?? '',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontStyle: FontStyle.italic,
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                    const SizedBox(height: 12.0),
                    if (movie.genres?.isNotEmpty == true)
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: movie.genres!.map((
                          genre,
                        ) {
                          return Chip(
                            label: Text(
                              genre,
                              style: theme.textTheme.bodySmall,
                            ),
                            backgroundColor:
                                theme.colorScheme.primaryContainer,
                            labelStyle: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          );
                        }).toList(),
                      ),
                    if (movie.certification?.isNotEmpty == true) ...[
                      const SizedBox(height: 8.0),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 6.0,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer,
                          borderRadius: BorderRadius.circular(
                            16.0,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.error,
                            width: 1.0,
                          ),
                        ),
                        child: Text(
                          movie.certification!,
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
    );
  }
}
