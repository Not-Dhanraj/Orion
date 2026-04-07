import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/shared/widgets/sheets/sheet_form_widgets.dart';
import 'package:client/src/shared/widgets/inputs/custom_switch_tile.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieConfigurationForm extends ConsumerWidget {
  final MovieResource movie;
  final List<QualityProfileResource> qualityProfiles;
  final List<RootFolderResource> rootFolders;
  final Function(MovieResource) onMovieChanged;

  const MovieConfigurationForm({
    super.key,
    required this.movie,
    required this.qualityProfiles,
    required this.rootFolders,
    required this.onMovieChanged,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieState = ref.watch(movieAddController);
    final updatedMovie = movieState.value?.selectedMovie ?? movie;

    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: [
        FormSectionHeader(label: 'BASIC OPTIONS'),
        OutlinedFormSection(
          children: [
            GenericDropdownRow<MonitorTypes>(
              label: 'Monitor',
              subtitle: 'Select how to monitor this movie',
              value: updatedMovie.addOptions?.monitor ?? MonitorTypes.movieOnly,
              items: MonitorTypes.values.toList(),
              itemToString: (t) => t.name.capitalizeByWord(),
              onChanged: (newType) {
                onMovieChanged(
                  updatedMovie.rebuild(
                    (b) => b..addOptions.update((b2) => b2..monitor = newType),
                  ),
                );
              },
            ),
            FormRowDivider(),
            GenericDropdownRow<MovieStatusType>(
              label: 'Minimum Availability',
              subtitle: 'When the movie is considered available',
              value:
                  updatedMovie.minimumAvailability ?? MovieStatusType.released,
              items: [
                MovieStatusType.announced,
                MovieStatusType.inCinemas,
                MovieStatusType.released,
              ],
              itemToString: (t) => t.name.capitalizeByWord(),
              onChanged: (newType) {
                onMovieChanged(
                  updatedMovie.rebuild((b) => b..minimumAvailability = newType),
                );
              },
            ),
          ],
        ),

        const SizedBox(height: 20),

        FormSectionHeader(label: 'QUALITY & PATH'),
        OutlinedFormSection(
          children: [
            GenericDropdownRow<QualityProfileResource>(
              label: 'Profile',
              subtitle: 'Quality profile to use for downloads',
              value: qualityProfiles
                  .where((p) => p.id == updatedMovie.qualityProfileId)
                  .firstOrNull,
              items: qualityProfiles,
              itemToString: (p) => p.name ?? 'Unknown',
              onChanged: (selected) {
                onMovieChanged(
                  updatedMovie.rebuild(
                    (b) => b..qualityProfileId = selected.id,
                  ),
                );
              },
            ),
            FormRowDivider(),
            GenericDropdownRow<RootFolderResource>(
              label: 'Movie Path',
              subtitle: 'Where the movie should be saved',
              value: rootFolders
                  .where((f) => f.path == updatedMovie.rootFolderPath)
                  .firstOrNull,
              items: rootFolders,
              itemToString: (f) => f.path ?? 'Unknown',
              onChanged: (selected) {
                onMovieChanged(
                  updatedMovie.rebuild(
                    (b) => b..rootFolderPath = selected.path,
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(height: 20),

        FormSectionHeader(label: 'SEARCH OPTIONS'),
        OutlinedFormSection(
          children: [
            CustomSwitchTile(
              title: 'Search for Movie',
              subtitle: 'Start searching for missing movie',
              value: updatedMovie.addOptions?.searchForMovie ?? true,
              onChanged: (value) => onMovieChanged(
                updatedMovie.rebuild(
                  (b) =>
                      b..addOptions.update((b2) => b2..searchForMovie = value),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
