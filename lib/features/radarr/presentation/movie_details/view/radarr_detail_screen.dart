import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/movie_details_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/delete_movie_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/update_movie_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/movie_release_provider.dart';
import 'package:client/features/radarr/application/provider/all_movies_provider/all_movies_provider.dart';
import 'package:client/features/radarr/presentation/movie_edit/view/movie_edit_screen.dart';
import 'package:client/features/radarr/presentation/shared/widgets/release_selection_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_media_info.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_overview.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_status_indicators.dart';
import 'package:entry/entry.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_details.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_info_widget.dart';

class RadarrDetailScreen extends ConsumerWidget {
  final RadarrMovie movie;

  const RadarrDetailScreen({super.key, required this.movie});

  String? _getImageUrl(RadarrMovie movie, {String coverType = 'poster'}) {
    try {
      final image = movie.images?.firstWhere(
        (image) => image.coverType == coverType,
      );
      return image?.remoteUrl;
    } catch (e) {
      // Ignore if not found
    }
    return null;
  }

  Future<void> _deleteMovie(
    BuildContext context,
    WidgetRef ref,
    RadarrMovie movie,
  ) async {
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Movie'),
        content: Text(
          'Are you sure you want to delete "${movie.title}"?\n\nThis will remove the movie as well as any downloads of this movie from server.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('CANCEL'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('DELETE'),
          ),
        ],
      ),
    );

    if (confirmed == true && movie.id != null) {
      try {
        await ref.read(deleteMovieProvider(movie.id!).future);

        // Invalidate the all movies provider to refresh the movies list
        ref.invalidate(allMoviesProvider);

        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('${movie.title} has been deleted'),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 2),
          ),
        );

        if (navigator.canPop()) {
          navigator.pop();
        }
      } catch (e) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Error deleting movie: $e'),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    }
  }

  Widget _buildActionButton(
    BuildContext context,
    WidgetRef ref, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.withAlpha(20),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withAlpha(100), width: 1),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: color),
            iconSize: 24,
            padding: const EdgeInsets.all(12),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    // Watch the movie details provider to get real-time updates
    final movieAsync = movie.id != null
        ? ref.watch(movieDetailsProvider(movie.id!))
        : null;

    // Use the updated movie data if available, otherwise fall back to the original
    final currentMovie =
        movieAsync?.when(
          data: (updatedMovie) => updatedMovie,
          loading: () => movie,
          error: (_, __) => movie,
        ) ??
        movie;

    final posterUrl = _getImageUrl(currentMovie);
    final backdropUrl = _getImageUrl(currentMovie, coverType: 'fanart');

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // Backdrop and title area
          DetailSliverAppBar(
            title: 'Details',
            fanartUrl: backdropUrl,
            actions: [],
          ),

          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.shadow.withAlpha(25),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main movie details card with poster, title, alternate title, genre, rating
                  Entry.opacity(
                    duration: const Duration(milliseconds: 400),
                    child: MovieDetails(
                      movie: currentMovie,
                      posterUrl: posterUrl,
                    ),
                  ),

                  // Status indicators
                  Entry.opacity(
                    duration: const Duration(milliseconds: 450),
                    delay: const Duration(milliseconds: 50),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: MovieStatusIndicators(movie: currentMovie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Action buttons card
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 100),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Actions',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildActionButton(
                                    context,
                                    ref,
                                    icon: Icons.edit,
                                    label: 'Edit',
                                    color: theme.colorScheme.primary,
                                    onPressed: () async {
                                      final result = await Navigator.of(context)
                                          .push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  MovieEditScreen(
                                                    movie: currentMovie,
                                                  ),
                                            ),
                                          );

                                      // If changes were made and saved successfully
                                      if (result == true &&
                                          currentMovie.id != null) {
                                        // Invalidate providers to refresh the movie data
                                        ref.invalidate(
                                          movieDetailsProvider(
                                            currentMovie.id!,
                                          ),
                                        );
                                        ref.invalidate(allMoviesProvider);
                                      }
                                    },
                                  ),
                                  _buildActionButton(
                                    context,
                                    ref,
                                    icon: Icons.delete_outline,
                                    label: 'Delete',
                                    color: Colors.red,
                                    onPressed: () => _deleteMovie(
                                      context,
                                      ref,
                                      currentMovie,
                                    ),
                                  ),
                                  _buildActionButton(
                                    context,
                                    ref,
                                    icon: Icons.refresh,
                                    label: 'Refresh',
                                    color: theme.colorScheme.secondary,
                                    onPressed: () async {
                                      try {
                                        // For refresh action, pass the movie directly
                                        // The API will handle the refresh metadata internally
                                        await ref.read(
                                          updateMovieProvider(
                                            currentMovie,
                                          ).future,
                                        );

                                        // Refresh local data by invalidating the provider
                                        if (currentMovie.id != null) {
                                          ref.invalidate(
                                            movieDetailsProvider(
                                              currentMovie.id!,
                                            ),
                                          );
                                        }

                                        if (context.mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Refreshing movie: ${currentMovie.title}',
                                              ),
                                              duration: const Duration(
                                                seconds: 2,
                                              ),
                                            ),
                                          );
                                        }
                                      } catch (e) {
                                        if (context.mounted) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Error refreshing movie: $e',
                                              ),
                                              backgroundColor: Colors.red,
                                            ),
                                          );
                                        }
                                      }
                                    },
                                  ),
                                  // Show either "Downloaded" or "Search" based on hasFile status
                                  currentMovie.hasFile == true
                                      ? _buildActionButton(
                                          context,
                                          ref,
                                          icon: Icons.download_done,
                                          label: 'Done',
                                          color: Colors.green,
                                          onPressed: () {
                                            if (context.mounted) {
                                              ScaffoldMessenger.of(
                                                context,
                                              ).showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    '${currentMovie.title} is already downloaded',
                                                  ),
                                                  backgroundColor: Colors.green,
                                                  duration: const Duration(
                                                    seconds: 2,
                                                  ),
                                                ),
                                              );
                                            }
                                          },
                                        )
                                      : _buildActionButton(
                                          context,
                                          ref,
                                          icon: Icons.search,
                                          label: 'Search',
                                          color: theme.colorScheme.tertiary,
                                          onPressed: () async {
                                            if (currentMovie.id == null) {
                                              if (context.mounted) {
                                                ScaffoldMessenger.of(
                                                  context,
                                                ).showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                      'Cannot search: Missing movie ID',
                                                    ),
                                                    backgroundColor: Colors.red,
                                                  ),
                                                );
                                              }
                                              return;
                                            }

                                            try {
                                              // Show loading dialog
                                              if (context.mounted) {
                                                showDialog(
                                                  context: context,
                                                  barrierDismissible: false,
                                                  builder: (context) =>
                                                      const Center(
                                                        child:
                                                            CircularProgressIndicator(),
                                                      ),
                                                );
                                              }

                                              // Get releases for this movie
                                              final releases = await ref.read(
                                                movieReleaseProvider(
                                                  currentMovie.id!,
                                                ).future,
                                              );

                                              // Close loading dialog
                                              if (context.mounted) {
                                                Navigator.of(context).pop();
                                              }

                                              if (releases.isEmpty) {
                                                if (context.mounted) {
                                                  ScaffoldMessenger.of(
                                                    context,
                                                  ).showSnackBar(
                                                    const SnackBar(
                                                      content: Text(
                                                        'No releases found for this movie',
                                                      ),
                                                      duration: Duration(
                                                        seconds: 2,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                return;
                                              }

                                              // Show release selection dialog
                                              if (context.mounted) {
                                                await showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      ReleaseSelectionDialog(
                                                        releases: releases,
                                                        title:
                                                            'Releases for ${currentMovie.title ?? "Movie"}',
                                                      ),
                                                );
                                              }
                                            } catch (e) {
                                              if (context.mounted) {
                                                Navigator.of(
                                                  context,
                                                ).pop(); // Close loading dialog if still showing

                                                ScaffoldMessenger.of(
                                                  context,
                                                ).showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Error fetching releases: $e',
                                                    ),
                                                    backgroundColor: Colors.red,
                                                  ),
                                                );
                                              }
                                            }
                                          },
                                        ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Overview - now in a card like series detail
                  Entry.opacity(
                    duration: const Duration(milliseconds: 550),
                    delay: const Duration(milliseconds: 150),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MovieOverview(movie: currentMovie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Movie Info with year, runtime and rating
                  Entry.opacity(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MovieInfoWidget(movie: currentMovie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Media Info
                  Entry.opacity(
                    duration: const Duration(milliseconds: 700),
                    delay: const Duration(milliseconds: 300),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MovieMediaInfo(movie: currentMovie),
                    ),
                  ),

                  const SizedBox(height: 32.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
