import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/movie_details_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/delete_movie_provider.dart';
import 'package:client/features/radarr/presentation/movie_edit/view/movie_edit_screen.dart';
import 'package:client/features/radarr/presentation/shared/widgets/movie_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_info.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_media_info.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_overview.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_status_indicators.dart';
import 'package:client/features/radarr/presentation/movie_details/widgets/movie_credits.dart';
import 'package:entry/entry.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/movie_credits_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
          'Are you sure you want to delete "${movie.title}"?\n\nThis will remove the movie from Radarr server.',
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
        final result = await ref.read(deleteMovieProvider(movie.id!).future);

        if (result) {
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
        } else {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('Failed to delete ${movie.title}'),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
            ),
          );
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final posterUrl = _getImageUrl(movie);
    final backdropUrl = _getImageUrl(movie, coverType: 'fanart');

    // Watch for movie credits
    final creditsAsyncValue = ref.watch(movieCreditsProvider(movie.id!));

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // Backdrop and title area
          DetailSliverAppBar(
            title: 'Details',
            fanartUrl: backdropUrl,
            actions: [
              IconButton(
                icon: const Icon(Icons.edit),
                tooltip: 'Edit Movie',
                onPressed: () async {
                  final result = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MovieEditScreen(movie: movie),
                    ),
                  );

                  // If changes were made and saved successfully
                  if (result == true && movie.id != null) {
                    // Invalidate provider to refresh the movie data
                    ref.invalidate(movieDetailsProvider(movie.id!));
                  }
                },
              ),
              MovieActionButtons(movie: movie),
            ],
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main information section
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Poster
                      Entry.opacity(
                        duration: const Duration(milliseconds: 500),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox(
                            width: 120,
                            height: 180,
                            child: Hero(
                              tag: movie.id!,
                              child: posterUrl != null
                                  ? Image.network(
                                      posterUrl,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Container(
                                                color:
                                                    colorScheme.surfaceVariant,
                                                child: Center(
                                                  child: Icon(
                                                    Icons.movie,
                                                    size: 40,
                                                    color: colorScheme
                                                        .onSurfaceVariant,
                                                  ),
                                                ),
                                              ),
                                    )
                                  : Container(
                                      color: colorScheme.surfaceVariant,
                                      child: Center(
                                        child: Icon(
                                          Icons.movie,
                                          size: 40,
                                          color: colorScheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 16),

                      // Movie info (year, runtime, etc.)
                      Expanded(
                        child: Entry.opacity(
                          duration: const Duration(milliseconds: 500),
                          delay: const Duration(milliseconds: 200),
                          child: MovieInfo(movie: movie),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Status indicators
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 300),
                    child: MovieStatusIndicators(movie: movie),
                  ),

                  const SizedBox(height: 24),

                  // Overview
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 400),
                    child: MovieOverview(movie: movie),
                  ),

                  const SizedBox(height: 24),

                  // Action buttons
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 500),
                    child: MovieActionButtons(movie: movie),
                  ),

                  const SizedBox(height: 24),

                  // Credits section
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 600),
                    child: creditsAsyncValue.when(
                      data: (credits) => MovieCredits(credits: credits),
                      loading: () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Credits', style: textTheme.titleLarge),
                          const SizedBox(height: 16),
                          const Center(
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          ),
                        ],
                      ),
                      error: (_, __) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Credits', style: textTheme.titleLarge),
                          const SizedBox(height: 8),
                          Text(
                            'Failed to load credits',
                            style: TextStyle(color: colorScheme.error),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Media Info
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 700),
                    child: MovieMediaInfo(movie: movie),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieEditScreen(movie: movie),
            ),
          );
        },
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
