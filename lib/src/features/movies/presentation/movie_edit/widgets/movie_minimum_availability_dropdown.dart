import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieMinimumAvailabilityDropdown extends ConsumerWidget {
  final MovieResource movie;
  final Function(MovieResource) onMovieChanged;

  const MovieMinimumAvailabilityDropdown({
    super.key,
    required this.movie,
    required this.onMovieChanged,
  });

  String _movieStatusTypeToString(MovieStatusType? type) {
    if (type == null) return 'announced';
    
    switch (type) {
      case MovieStatusType.inCinemas:
        return 'inCinemas';
      case MovieStatusType.released:
        return 'released';
      case MovieStatusType.announced:
      default:
        return 'announced';
    }
  }
  
  MovieStatusType _stringToMovieStatusType(String value) {
    switch (value) {
      case 'inCinemas':
        return MovieStatusType.inCinemas;
      case 'released':
        return MovieStatusType.released;
      case 'announced':
      default:
        return MovieStatusType.announced;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final currentMinimumAvailability = _movieStatusTypeToString(movie.minimumAvailability);

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
                      Icons.movie_filter,
                      size: 20,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Minimum Availability',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: theme.colorScheme.outline.withAlpha(100),
                  width: 1,
                ),
              ),
              child: DropdownButtonFormField<String>(
                value: currentMinimumAvailability,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  hintText: 'Select minimum availability',
                ),
                items: [
                  DropdownMenuItem<String>(
                    value: 'announced',
                    child: Text(
                      'Announced',
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'inCinemas',
                    child: Text(
                      'In Cinemas',
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'released',
                    child: Text(
                      'Physical/Web',
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
                onChanged: (newValue) {
                  if (newValue != null) {
                    final MovieStatusType statusType = _stringToMovieStatusType(newValue);
                    final updatedMovie = movie.rebuild((m) => m
                      ..minimumAvailability = statusType);
                    onMovieChanged(updatedMovie);
                  }
                },
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Radarr will consider the movie available once it reaches this status.',
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
