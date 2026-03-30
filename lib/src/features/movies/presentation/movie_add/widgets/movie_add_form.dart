import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/shared/widgets/common/custom_dropdown.dart';
import 'package:client/src/shared/widgets/common/sheet_form_widgets.dart';
import 'package:client/src/shared/widgets/custom_switch_tile.dart';
import 'package:client/src/utils/string_extension.dart';
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
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: [
        FormSectionHeader(label: 'BASIC OPTIONS'),
        OutlinedFormSection(
          children: [
            LabeledDropdownRow(
              label: 'Monitor',
              subtitle: 'Select how to monitor this movie',
              child: CustomDropdown(
                value:
                    (updatedMovie.addOptions?.monitor ?? MonitorTypes.movieOnly)
                        .name
                        .capitalizeByWord(),
                items: MonitorTypes.values
                    .map((t) => t.name.capitalizeByWord())
                    .toList(),
                onChanged: (newValue) {
                  final newType = MonitorTypes.values.firstWhere(
                    (t) => t.name.capitalizeByWord() == newValue,
                  );
                  onMovieChanged(
                    updatedMovie.rebuild(
                      (b) =>
                          b..addOptions.update((b2) => b2..monitor = newType),
                    ),
                  );
                },
              ),
            ),
            FormRowDivider(),
            LabeledDropdownRow(
              label: 'Minimum Availability',
              subtitle: 'When the movie is considered available',
              child: CustomDropdown(
                value:
                    (updatedMovie.minimumAvailability ??
                            MovieStatusType.released)
                        .name
                        .capitalizeByWord(),
                items: [
                  MovieStatusType.announced,
                  MovieStatusType.inCinemas,
                  MovieStatusType.released,
                ].map((t) => t.name.capitalizeByWord()).toList(),
                onChanged: (newValue) {
                  final newType = [
                    MovieStatusType.announced,
                    MovieStatusType.inCinemas,
                    MovieStatusType.released,
                  ].firstWhere((t) => t.name.capitalizeByWord() == newValue);
                  onMovieChanged(
                    updatedMovie.rebuild(
                      (b) => b..minimumAvailability = newType,
                    ),
                  );
                },
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        FormSectionHeader(label: 'QUALITY & PATH'),
        OutlinedFormSection(
          children: [
            LabeledDropdownRow(
              label: 'Profile',
              subtitle: 'Quality profile to use for downloads',
              child: CustomDropdown(
                value: qualityProfiles.isEmpty
                    ? 'Unknown'
                    : (qualityProfiles
                              .firstWhere(
                                (p) => p.id == updatedMovie.qualityProfileId,
                                orElse: () => qualityProfiles.first,
                              )
                              .name ??
                          'Unknown'),
                items: qualityProfiles.map((p) => p.name ?? 'Unknown').toList(),
                onChanged: (newValue) {
                  final selected = qualityProfiles.firstWhere(
                    (p) => p.name == newValue,
                  );
                  onMovieChanged(
                    updatedMovie.rebuild(
                      (b) => b..qualityProfileId = selected.id,
                    ),
                  );
                },
              ),
            ),
            FormRowDivider(),
            LabeledDropdownRow(
              label: 'Movie Path',
              subtitle: 'Where the movie should be saved',
              child: CustomDropdown(
                value: rootFolders.isEmpty
                    ? 'Unknown'
                    : (rootFolders
                              .firstWhere(
                                (f) => f.path == updatedMovie.rootFolderPath,
                                orElse: () => rootFolders.first,
                              )
                              .path ??
                          'Unknown'),
                items: rootFolders.map((f) => f.path ?? 'Unknown').toList(),
                onChanged: (newValue) {
                  final selected = rootFolders.firstWhere(
                    (f) => f.path == newValue,
                  );
                  onMovieChanged(
                    updatedMovie.rebuild(
                      (b) => b..rootFolderPath = selected.path,
                    ),
                  );
                },
              ),
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
