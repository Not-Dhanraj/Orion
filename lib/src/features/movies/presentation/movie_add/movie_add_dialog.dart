import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/features/movies/presentation/movie_add/widgets/movie_add_form.dart';
import 'package:client/src/shared/widgets/common/custom_snackbar.dart';
import 'package:client/src/shared/widgets/common/sheet_footer.dart';
import 'package:client/src/shared/widgets/common/sheet_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieAddDialog extends ConsumerWidget {
  final MovieResource movie;

  const MovieAddDialog({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final state = ref.watch(movieAddController).value;
    final selectedMovie = state?.selectedMovie;
    final isCreating = state?.isCreating ?? false;

    return DraggableScrollableSheet(
      initialChildSize: 0.85,
      maxChildSize: .85,
      minChildSize: 0.5,
      expand: false,
      builder: (context, _) {
        return Container(
          color: cs.surface,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: cs.surfaceContainerLow,
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: cs.outlineVariant.withValues(alpha: 0.4),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 3),
                    SheetHeader(
                      onClose: () => Navigator.of(context).pop(),
                      title: movie.title ?? 'Unknown',
                      label: 'ADD MOVIE',
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
              Expanded(
                child: selectedMovie == null
                    ? const Center(child: CircularProgressIndicator())
                    : Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 800),
                          child: SizedBox.expand(
                            child: MovieConfigurationForm(
                              movie: selectedMovie,
                              qualityProfiles: state?.qualityProfiles ?? [],
                              rootFolders: state?.rootFolders ?? [],
                              onMovieChanged: (updated) => ref
                                  .read(movieAddController.notifier)
                                  .updateSelectedMovieInState(updated),
                            ),
                          ),
                        ),
                      ),
              ),
              SheetFooter(
                isLoading: isCreating,
                isDisabled: selectedMovie == null,
                confirmLabel: 'ADD MOVIE',
                confirmIcon: Icons.add,
                onCancel: () => Navigator.of(context).pop(),
                onConfirm: () => _doAdd(context, ref, selectedMovie!, cs),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _doAdd(
    BuildContext context,
    WidgetRef ref,
    MovieResource movieToAdd,
    ColorScheme cs,
  ) async {
    final success = await ref
        .read(movieAddController.notifier)
        .addMovie(movieToAdd);

    if (!context.mounted) return;

    if (success) {
      Navigator.of(context).pop();
      Navigator.of(context).pop(); // Pops the search sheet too, returning to library
      CustomSnackbar.show(
        context,
        message: 'Successfully added "${movie.title}"',
        type: CustomSnackbarType.success,
      );
    } else {
      CustomSnackbar.show(
        context,
        message: 'Failed to add movie',
        type: CustomSnackbarType.error,
      );
    }
  }
}
