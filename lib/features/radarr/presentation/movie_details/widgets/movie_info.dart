import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:intl/intl.dart';

class MovieInfo extends StatelessWidget {
  final RadarrMovie movie;

  const MovieInfo({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    // Format year if available
    String? year;
    if (movie.year != null) {
      year = movie.year.toString();
    }

    // Format runtime if available
    String? runtime;
    if (movie.runtime != null && movie.runtime! > 0) {
      final hours = movie.runtime! ~/ 60;
      final minutes = movie.runtime! % 60;
      runtime = '${hours > 0 ? '${hours}h ' : ''}${minutes}m';
    }

    // Format ratings
    String? rating;
    if (movie.ratings?.value != null) {
      rating = '${movie.ratings!.value}/10';
    }

    // Format studio/production company
    String? studio = movie.studio;

    // Format premiere date
    String? premiereDate;
    if (movie.inCinemas != null) {
      try {
        final date = DateTime.parse(movie.inCinemas.toString());
        premiereDate = DateFormat.yMMMd().format(date);
      } catch (e) {
        // Ignore parse errors
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title with year
        Text(
          '${movie.title ?? 'Unknown Title'}${year != null ? ' ($year)' : ''}',
          style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

        const SizedBox(height: 8),

        // Runtime
        if (runtime != null) ...[
          Row(
            children: [
              Icon(
                Icons.timer_outlined,
                size: 16,
                color: colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 4),
              Text(
                runtime,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
        ],

        // Rating if available
        if (rating != null) ...[
          Row(
            children: [
              Icon(Icons.star, size: 16, color: Colors.amber),
              const SizedBox(width: 4),
              Text(
                rating,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
        ],

        // Studio
        if (studio != null) ...[
          Row(
            children: [
              Icon(
                Icons.movie_creation_outlined,
                size: 16,
                color: colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  studio,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
        ],

        // In Cinemas date
        if (premiereDate != null) ...[
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 16,
                color: colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 4),
              Text(
                premiereDate,
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
