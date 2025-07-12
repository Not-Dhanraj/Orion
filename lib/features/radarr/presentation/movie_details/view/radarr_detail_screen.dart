import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/movie_details_provider.dart';
import 'package:client/features/radarr/application/provider/movie_management_provider/delete_movie_provider.dart';
import 'package:client/features/radarr/presentation/movie_edit/view/movie_edit_screen.dart';
import 'package:client/features/radarr/presentation/shared/widgets/movie_action_buttons.dart';
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

    final posterUrl = _getImageUrl(movie);
    final backdropUrl = _getImageUrl(movie, coverType: 'fanart');

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
                  // Main movie details card with poster, title, alternate title, genre, rating
                  Entry.opacity(
                    duration: const Duration(milliseconds: 400),
                    child: MovieDetails(movie: movie, posterUrl: posterUrl),
                  ),

                  // Status indicators
                  Entry.opacity(
                    duration: const Duration(milliseconds: 450),
                    delay: const Duration(milliseconds: 50),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: MovieStatusIndicators(movie: movie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Overview - now in a card like series detail
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

                  // Movie Info with year, runtime and rating
                  Entry.opacity(
                    duration: const Duration(milliseconds: 600),
                    delay: const Duration(milliseconds: 200),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: MovieInfoWidget(movie: movie),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Media Info
                  Entry.opacity(
                    duration: const Duration(milliseconds: 700),
                    delay: const Duration(milliseconds: 300),
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
    );
  }
}
