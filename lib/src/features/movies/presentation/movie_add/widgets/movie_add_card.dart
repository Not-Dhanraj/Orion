import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/features/movies/presentation/movie_add/movie_add_controller.dart';
import 'package:client/src/features/movies/presentation/movie_add/widgets/movie_add_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';
import 'package:with_opacity/with_opacity.dart';

class MovieAddCard extends ConsumerWidget {
  final MovieResource movie;
  const MovieAddCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isCreating =
        ref.watch(movieAddControllerProvider).value?.isCreating ?? false;

    final year = movie.year;
    final status = movie.status;

    return Card(
      elevation: 1,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.2),
      child: InkWell(
        onTap: isCreating
            ? null
            : () => _showAddMovieDialog(context, movie, ref),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child:
                      movie.images?.isNotEmpty == true &&
                          movie.images!.any(
                            (i) => i.coverType == MediaCoverTypes.fanart,
                          )
                      ? CachedNetworkImage(
                          imageUrl:
                              movie.images!
                                  .firstWhere(
                                    (i) =>
                                        i.coverType == MediaCoverTypes.fanart,
                                    orElse: () => movie.images!.firstWhere(
                                      (i) =>
                                          i.coverType ==
                                              MediaCoverTypes.poster ||
                                          i.coverType == MediaCoverTypes.banner,
                                      orElse: () => movie.images!.first,
                                    ),
                                  )
                                  .remoteUrl ??
                              '',
                          fit: BoxFit.cover,
                          errorWidget: (_, __, ___) => Container(
                            color: theme.colorScheme.surfaceContainerHighest,
                            child: Icon(
                              Icons.movie,
                              size: 50,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        )
                      : Container(
                          color: theme.colorScheme.surfaceContainerHighest,
                          child: Icon(
                            Icons.movie,
                            size: 50,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                ),

                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withCustomOpacity(0.7),
                        ],
                        stops: const [0.5, 1.0],
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movie.title ?? 'Unknown Title',
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 3.0,
                                color: Colors.black.withCustomOpacity(0.5),
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),

                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            if (year != null)
                              _InfoChip(
                                text: year.toString(),
                                icon: Icons.calendar_today_outlined,
                              ),
                            if (status != null)
                              _InfoChip(
                                text: _formatStatus(status),
                                icon: Icons.info_outline,
                                color: _getStatusColor(status, theme),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 12,
                  right: 12,
                  child: Material(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add,
                            size: 16,
                            color: theme.colorScheme.onPrimary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Add',
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            if (movie.overview != null && movie.overview!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overview',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      movie.overview!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _formatStatus(MovieStatusType status) {
    return switch (status) {
      MovieStatusType.tba => 'TBA',
      MovieStatusType.announced => 'Announced',
      MovieStatusType.inCinemas => 'In Cinemas',
      MovieStatusType.released => 'Released',
      MovieStatusType.deleted => 'Deleted',
      MovieStatusType() => 'Unknown',
    };
  }

  Color _getStatusColor(MovieStatusType status, ThemeData theme) {
    return switch (status) {
      MovieStatusType.tba => theme.colorScheme.tertiary,
      MovieStatusType.announced => theme.colorScheme.secondary,
      MovieStatusType.inCinemas => Colors.orange,
      MovieStatusType.released => Colors.green,
      MovieStatusType.deleted => Colors.red,
      MovieStatusType() => theme.colorScheme.secondary,
    };
  }

  void _showAddMovieDialog(
    BuildContext context,
    MovieResource movie,
    WidgetRef ref,
  ) async {
    ref.read(movieAddControllerProvider.notifier).selectMovie(movie);
    final theme = Theme.of(context);

    final initialMovie = ref
        .read(movieAddControllerProvider)
        .value
        ?.selectedMovie;

    await showDialog(
      context: context,
      builder: (dialogContext) {
        return Consumer(
          builder: (context, dialogRef, _) {
            final state = dialogRef.watch(movieAddControllerProvider).value;
            final selectedMovie = state?.selectedMovie ?? initialMovie;

            return Dialog.fullscreen(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                constraints: BoxConstraints(
                  maxWidth: 500,
                  maxHeight: MediaQuery.of(context).size.height * 0.9,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: movie.images?.isNotEmpty == true
                                ? CachedNetworkImageProvider(
                                    movie.images!.first.remoteUrl ?? '',
                                  )
                                : null,
                            backgroundColor: theme.colorScheme.primaryContainer,
                            child: movie.images?.isEmpty == true
                                ? Icon(
                                    Icons.movie,
                                    color: theme.colorScheme.primary,
                                  )
                                : null,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.title ?? 'Unknown Movie',
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (movie.year != null)
                                  Text(
                                    movie.year.toString(),
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.close),
                            tooltip: 'Close',
                          ),
                        ],
                      ),
                    ),

                    Flexible(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: selectedMovie != null
                              ? MovieAddForm(movie: selectedMovie)
                              : const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(24.0),
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                            ),
                            child: const Text('Cancel'),
                          ),
                          const SizedBox(width: 12),
                          FilledButton.icon(
                            icon: const Icon(Icons.add),
                            label: const Text('Add Movie'),
                            style: FilledButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                            ),
                            onPressed: state?.isCreating == true
                                ? null
                                : () async {
                                    if (selectedMovie == null) return;

                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (_) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(height: 16),
                                              CircularProgressIndicator(
                                                color:
                                                    theme.colorScheme.primary,
                                              ),
                                              const SizedBox(height: 24),
                                              Text(
                                                'Adding Movie...',
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                              const SizedBox(height: 8),
                                              Text(
                                                'Please wait while the movie is added to your library.',
                                                textAlign: TextAlign.center,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              const SizedBox(height: 16),
                                            ],
                                          ),
                                        );
                                      },
                                    );

                                    try {
                                      await dialogRef
                                          .read(
                                            movieAddControllerProvider.notifier,
                                          )
                                          .addMovie(selectedMovie);

                                      if (context.mounted) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Movie added successfully: ${selectedMovie.title}',
                                            ),
                                            backgroundColor: Colors.green,
                                            behavior: SnackBarBehavior.floating,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            margin: const EdgeInsets.all(16),
                                            duration: const Duration(
                                              seconds: 4,
                                            ),
                                            action: SnackBarAction(
                                              label: 'OK',
                                              textColor: Colors.white,
                                              onPressed: () {},
                                            ),
                                          ),
                                        );
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                      }
                                    } catch (e) {
                                      if (context.mounted) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Failed to add movie: ${e.toString()}',
                                            ),
                                            backgroundColor: theme
                                                .colorScheme
                                                .errorContainer,
                                            behavior: SnackBarBehavior.floating,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            margin: const EdgeInsets.all(16),
                                            duration: const Duration(
                                              seconds: 4,
                                            ),
                                          ),
                                        );
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pop();
                                      }
                                    }
                                  },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? color;
  const _InfoChip({required this.text, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final badgeColor = color ?? theme.colorScheme.tertiary;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: badgeColor.withCustomOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            text,
            style: theme.textTheme.labelSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
