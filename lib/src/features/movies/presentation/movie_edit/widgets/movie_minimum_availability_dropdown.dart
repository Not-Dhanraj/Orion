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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final currentMinimumAvailability = (movie.minimumAvailability);

    return Card(
      elevation: 3,
      shadowColor: theme.colorScheme.shadow.withAlpha(40),
      margin: const EdgeInsets.symmetric(vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        // side: BorderSide(
        //   color: theme.colorScheme.outline.withAlpha(30),
        //   width: 1,
        // ),
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
            DropdownButtonFormField<MovieStatusType>(
              borderRadius: BorderRadius.circular(12),

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
                DropdownMenuItem<MovieStatusType>(
                  value: MovieStatusType.announced,
                  child: Text('Announced', style: theme.textTheme.bodyLarge),
                ),
                DropdownMenuItem<MovieStatusType>(
                  value: MovieStatusType.inCinemas,
                  child: Text('In Cinemas', style: theme.textTheme.bodyLarge),
                ),
                DropdownMenuItem<MovieStatusType>(
                  value: MovieStatusType.released,
                  child: Text('Physical/Web', style: theme.textTheme.bodyLarge),
                ),
              ],
              onChanged: (newValue) {
                if (newValue != null) {
                  final MovieStatusType statusType = newValue;
                  final updatedMovie = movie.rebuild(
                    (m) => m..minimumAvailability = statusType,
                  );
                  onMovieChanged(updatedMovie);
                }
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
