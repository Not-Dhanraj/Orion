import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:client/src/shared/widgets/custom_switch_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';
import 'package:with_opacity/with_opacity.dart';

class MovieAddForm extends ConsumerWidget {
  final MovieResource movie;

  const MovieAddForm({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieState = ref.watch(movieAddControllerProvider);
    final updatedMovie = movieState.value?.selectedMovie ?? movie;
    final theme = Theme.of(context);
    final qualityProfiles = movieState.value?.qualityProfiles ?? [];
    final rootFolders = movieState.value?.rootFolders ?? [];

    return ListView(
      shrinkWrap: true,
      children: [
        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildSectionTitle(
                  context,
                  'Monitoring Options',
                  Icons.visibility,
                ),
                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: theme.colorScheme.outline.withAlpha(100),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      // Monitored switch
                      CustomSwitchTile(
                        title: 'Monitored',
                        subtitle: 'Download this movie automatically',
                        value: updatedMovie.monitored ?? false,
                        onChanged: (value) {
                          final newMovie = updatedMovie.rebuild(
                            (b) => b..monitored = value,
                          );
                          ref
                              .read(movieAddControllerProvider.notifier)
                              .updateSelectedMovie(newMovie);
                        },
                      ),
                      Divider(
                        height: 1,
                        indent: 12,
                        endIndent: 12,
                        color: theme.colorScheme.outlineVariant
                            .withCustomOpacity(0.5),
                      ),

                      // Monitor Type dropdown
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: const Text('Monitor'),
                                ),
                                const SizedBox(height: 4),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    'Select how to monitor this movie',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF393939),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Builder(
                                    builder: (_) {
                                      final currentValue =
                                          updatedMovie.addOptions?.monitor ??
                                          MonitorTypes.movieOnly;

                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          color: theme
                                              .colorScheme
                                              .surfaceContainerHighest,
                                        ),
                                        child: SizedBox(
                                          width: 150,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<MonitorTypes>(
                                              value: currentValue,
                                              isDense: true,
                                              isExpanded: true,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              dropdownColor: theme
                                                  .colorScheme
                                                  .surfaceContainerHighest,
                                              items: MonitorTypes.values.map((
                                                type,
                                              ) {
                                                String label = type
                                                    .toString()
                                                    .capitalizeByWord()
                                                    .split('.')
                                                    .last;

                                                return DropdownMenuItem(
                                                  value: type,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 8.0,
                                                        ),
                                                    child: Text(
                                                      label,
                                                      style: theme
                                                          .textTheme
                                                          .bodyMedium,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (MonitorTypes? newValue) {
                                                if (newValue != null) {
                                                  final newMovie = updatedMovie
                                                      .rebuild(
                                                        (b) => b
                                                          ..addOptions.update(
                                                            (b2) => b2
                                                              ..monitor =
                                                                  newValue,
                                                          ),
                                                      );
                                                  ref
                                                      .read(
                                                        movieAddControllerProvider
                                                            .notifier,
                                                      )
                                                      .updateSelectedMovie(
                                                        newMovie,
                                                      );
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      Divider(
                        height: 1,
                        indent: 12,
                        endIndent: 12,
                        color: theme.colorScheme.outlineVariant
                            .withCustomOpacity(0.5),
                      ),

                      // Search for movie switch
                      CustomSwitchTile(
                        title: 'Search for Movie',
                        subtitle: 'Start searching for the movie right away',
                        value: updatedMovie.addOptions?.searchForMovie ?? true,
                        onChanged: (value) {
                          final newMovie = updatedMovie.rebuild(
                            (b) => b
                              ..addOptions.update(
                                (b2) => b2..searchForMovie = value,
                              ),
                          );
                          ref
                              .read(movieAddControllerProvider.notifier)
                              .updateSelectedMovie(newMovie);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Movie Path Card
        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildSectionTitle(context, 'Movie Path', Icons.folder),
                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      // Root Folder Path
                      if (rootFolders.isNotEmpty)
                        DropdownButtonFormField<String>(
                          value: updatedMovie.rootFolderPath,
                          borderRadius: BorderRadius.circular(12),
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
                          ),
                          items: rootFolders
                              .map(
                                (folder) => DropdownMenuItem<String>(
                                  value: folder.path,
                                  child: Text(
                                    folder.path ?? 'Unknown Path',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            if (value != null) {
                              final newMovie = updatedMovie.rebuild(
                                (b) => b..rootFolderPath = value,
                              );
                              ref
                                  .read(movieAddControllerProvider.notifier)
                                  .updateSelectedMovie(newMovie);
                            }
                          },
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Minimum Availability Card
        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildSectionTitle(
                  context,
                  'Minimum Availability',
                  Icons.date_range,
                ),
                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(2),
                  child: DropdownButtonFormField<MovieStatusType>(
                    value:
                        updatedMovie.minimumAvailability ??
                        MovieStatusType.released,
                    borderRadius: BorderRadius.circular(12),
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
                    ),
                    items: [
                      DropdownMenuItem(
                        value: MovieStatusType.announced,
                        child: const Text('Announced'),
                      ),
                      DropdownMenuItem(
                        value: MovieStatusType.inCinemas,
                        child: const Text('In Cinemas'),
                      ),
                      DropdownMenuItem(
                        value: MovieStatusType.released,
                        child: const Text('Released'),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        final newMovie = updatedMovie.rebuild(
                          (b) => b..minimumAvailability = value,
                        );
                        ref
                            .read(movieAddControllerProvider.notifier)
                            .updateSelectedMovie(newMovie);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Quality Profile Card
        Card(
          elevation: 3,
          shadowColor: theme.colorScheme.shadow.withAlpha(40),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildSectionTitle(
                  context,
                  'Quality Profile',
                  Icons.high_quality,
                ),
                const SizedBox(height: 8),

                Container(
                  padding: const EdgeInsets.all(4),
                  margin: const EdgeInsets.all(2),
                  child: qualityProfiles.isNotEmpty
                      ? DropdownButtonFormField<int>(
                          value: updatedMovie.qualityProfileId,
                          borderRadius: BorderRadius.circular(12),
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
                          ),
                          items: qualityProfiles
                              .map(
                                (profile) => DropdownMenuItem<int>(
                                  value: profile.id,
                                  child: Text(
                                    profile.name ?? 'Unknown Profile',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            if (value != null) {
                              final newMovie = updatedMovie.rebuild(
                                (b) => b..qualityProfileId = value,
                              );
                              ref
                                  .read(movieAddControllerProvider.notifier)
                                  .updateSelectedMovie(newMovie);
                            }
                          },
                        )
                      : const Center(
                          child: Text('No quality profiles available'),
                        ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title, IconData icon) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withAlpha(100),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, size: 20, color: theme.colorScheme.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
