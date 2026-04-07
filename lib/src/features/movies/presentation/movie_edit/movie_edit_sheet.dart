import 'package:client/src/features/movies/presentation/movie_edit/movie_edit_controller.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/widgets/sheets/sheet_footer.dart';
import 'package:client/src/shared/widgets/sheets/sheet_form_widgets.dart';
import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:client/src/shared/widgets/inputs/custom_switch_tile.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieEditSheet extends ConsumerWidget {
  final MovieResource movie;
  const MovieEditSheet({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final editStateAsync = ref.watch(movieEditController(movie));

    final isLoading = editStateAsync.value?.isLoading ?? false;
    final hasChanges = editStateAsync.value?.hasChanges ?? false;
    final state = editStateAsync.value;

    return Container(
      color: cs.surface,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: cs.surfaceContainerLow,
                border: Border(
                  bottom: BorderSide(
                    color: cs.outlineVariant.withValues(alpha: 0.4),
                  ),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 3),
                  SheetHeader(
                    onClose: () => Navigator.of(context).pop(),
                    title: movie.title ?? 'Unknown',
                    label: 'EDIT MOVIE',
                  ),
                  const SizedBox(height: 6),
                ],
              ),
            ),
            Flexible(
              child: AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutCubic,
                alignment: Alignment.topCenter,
                child: editStateAsync.when(
                  data: (state) {
                    final movieData = state.movie ?? MovieResource();
                    final qualityProfiles = state.qualityProfiles;
                    final rootFolders = state.rootFolders ?? [];
                    final controller = ref.read(
                      movieEditController(movie).notifier,
                    );

                    return ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                        children: [
                          FormSectionHeader(label: 'BASIC OPTIONS'),
                          OutlinedFormSection(
                            children: [
                              CustomSwitchTile(
                                title: 'Monitored',
                                subtitle:
                                    'Download Monitored release when available',
                                value: movieData.monitored ?? false,
                                onChanged: (value) => controller.updateMovie(
                                  movieData.rebuild(
                                    (b) => b..monitored = value,
                                  ),
                                ),
                              ),
                              FormRowDivider(),
                              GenericDropdownRow<MovieStatusType>(
                                label: 'Minimum Availability',
                                subtitle:
                                    'When the movie is considered available',
                                value:
                                    movieData.minimumAvailability ??
                                    MovieStatusType.released,
                                items: [
                                  MovieStatusType.announced,
                                  MovieStatusType.inCinemas,
                                  MovieStatusType.released,
                                ],
                                itemToString: (t) => t.name.capitalizeByWord(),
                                onChanged: (newType) => controller.updateMovie(
                                  movieData.rebuild(
                                    (b) => b..minimumAvailability = newType,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          FormSectionHeader(label: 'QUALITY AND PATH'),
                          OutlinedFormSection(
                            children: [
                              GenericDropdownRow<QualityProfileResource>(
                                label: 'Profile',
                                subtitle:
                                    'Quality profile to use for downloads',
                                value: qualityProfiles
                                    .where(
                                      (p) => p.id == movieData.qualityProfileId,
                                    )
                                    .firstOrNull,
                                items: qualityProfiles,
                                itemToString: (p) => p.name ?? 'Unknown',
                                onChanged: (selected) => controller.updateMovie(
                                  movieData.rebuild(
                                    (b) => b..qualityProfileId = selected.id,
                                  ),
                                ),
                              ),
                              if (rootFolders.isNotEmpty) ...[
                                FormRowDivider(),
                                GenericDropdownRow<RootFolderResource>(
                                  label: 'Movie Path',
                                  subtitle:
                                      'Where the movie is saved (Cannot be easily changed)',
                                  value: rootFolders
                                      .where(
                                        (f) =>
                                            f.path == movieData.rootFolderPath,
                                      )
                                      .firstOrNull,
                                  items: rootFolders,
                                  itemToString: (f) => f.path ?? 'Unknown',
                                  onChanged: (selected) =>
                                      controller.updateMovie(
                                        movieData.rebuild(
                                          (b) =>
                                              b..rootFolderPath = selected.path,
                                        ),
                                      ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  loading: () => SizedBox(
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          child: SizedBox(
                            height: 1.5,
                            child: AnimatedProgressBar(),
                          ),
                        ),
                        Center(child: AnimatedLoadingText()),
                      ],
                    ),
                  ),
                  error: (e, stk) => SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Center(
                      child: CustomErrorState(error: e, stackTrace: stk),
                    ),
                  ),
                ),
              ),
            ),
            SheetFooter(
              isLoading: isLoading,
              isDisabled: !hasChanges || state == null,
              confirmLabel: 'SAVE CHANGES',
              confirmIcon: Icons.save,
              onCancel: () => Navigator.of(context).pop(),
              onConfirm: () => _doSave(context, ref, movie),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _doSave(
    BuildContext context,
    WidgetRef ref,
    MovieResource movie,
  ) async {
    final success = await ref
        .read(movieEditController(movie).notifier)
        .saveChanges();

    if (context.mounted) {
      if (success) {
        CustomSnackbar.show(
          context,
          message: 'Changes saved successfully',
          type: CustomSnackbarType.success,
        );
        Navigator.of(context).pop(true); // close sheet
      } else {
        CustomSnackbar.show(
          context,
          message: 'Failed to save changes',
          type: CustomSnackbarType.error,
        );
      }
    }
  }
}
