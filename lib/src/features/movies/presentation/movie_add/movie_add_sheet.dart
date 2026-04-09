import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/features/movies/presentation/movie_add/widgets/movie_add_form.dart';
import 'package:client/src/shared/domain/snackbar_config.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/widgets/sheets/sheet_footer.dart';
import 'package:client/src/shared/widgets/sheets/sheet_header.dart';
import 'package:client/src/shared/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:radarr_api/radarr_api.dart';

class MovieAddSheet extends ConsumerWidget {
  final MovieResource movie;

  const MovieAddSheet({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final state = ref.watch(movieAddController).value;
    final selectedMovie = state?.selectedMovie;
    final isCreating = state?.isCreating ?? false;

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: context.screenHeight * .85),
      child: Container(
        color: cs.surface,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                      onClose: () => context.pop(),
                      title: movie.title ?? 'Unknown',
                      label: 'ADD MOVIE',
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
              Flexible(
                child: selectedMovie == null
                    ? const Padding(
                        padding: EdgeInsets.all(32),
                        child: Center(
                          child: CustomErrorState(
                            error: 'Selected movie is null',
                          ),
                        ),
                      )
                    : ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
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
              SheetFooter(
                isLoading: isCreating,
                isDisabled: selectedMovie == null,
                confirmLabel: 'ADD MOVIE',
                confirmIcon: Icons.add,
                onCancel: () => context.pop(),
                onConfirm: () => _doAdd(context, ref, selectedMovie!, cs),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _doAdd(
    BuildContext context,
    WidgetRef ref,
    MovieResource movieToAdd,
    ColorScheme cs,
  ) async {
    final hostContext = Navigator.of(context, rootNavigator: true).context;
    final success = await ref
        .read(movieAddController.notifier)
        .addMovie(movieToAdd);

    if (!context.mounted) return;

    if (success) {
      context.pop();
      context.pop(); // Pops the search sheet too, returning to library
      CustomSnackbar.show(
        hostContext,
        message: 'Successfully added "${movie.title}"',
        type: CustomSnackbarType.success,
      );
    } else {
      context.pop();
      CustomSnackbar.show(
        hostContext,
        message: 'Failed to add movie',
        type: CustomSnackbarType.error,
      );
    }
  }
}
