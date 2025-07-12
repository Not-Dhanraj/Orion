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
        await ref.read(deleteMovieProvider(movie.id!).future);
        
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
              IconButton(
                icon: const Icon(Icons.delete_outline),
                tooltip: 'Delete Movie',
                onPressed: () => _deleteMovie(context, ref, movie),
              ),
              MovieActionButtons(movie: movie),
            ],
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
                  // Main movie details card - poster and basic info
                  Card(
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    elevation: 4,
                    shadowColor: colorScheme.shadow.withOpacity(0.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Poster with shadow
                          Entry.opacity(
                            duration: const Duration(milliseconds: 400),
                            child: Container(
                              width: 120,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 8.0,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Hero(
                                  tag: movie.id!,
                                  child: posterUrl != null
                                      ? Image.network(
                                          posterUrl,
                                          fit: BoxFit.cover,
                                          errorBuilder: (context, error, stackTrace) => Container(
                                            color: colorScheme.surfaceVariant,
                                            child: Center(
                                              child: Icon(
                                                Icons.movie,
                                                size: 40,
                                                color: colorScheme.onSurfaceVariant,
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
                              duration: const Duration(milliseconds: 400),
                              child: MovieInfo(movie: movie),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Status indicators
                  Entry.opacity(
                    duration: const Duration(milliseconds: 450),
                    delay: const Duration(milliseconds: 50),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
                      child: MovieStatusIndicators(movie: movie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Overview
                  Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 100),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MovieOverview(movie: movie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Action buttons
                  Entry.opacity(
                    duration: const Duration(milliseconds: 550),
                    delay: const Duration(milliseconds: 150),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MovieActionButtons(movie: movie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Credits section
                  Entry.opacity(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  ),

                  const SizedBox(height: 24),

                  // Media Info
                  Entry.opacity(
                    duration: const Duration(milliseconds: 650),
                    delay: const Duration(milliseconds: 250),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MovieMediaInfo(movie: movie),
                    ),
                  ),
                  
                  const SizedBox(height: 32.0),
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
