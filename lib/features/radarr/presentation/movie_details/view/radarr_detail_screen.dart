import 'package:client/core/widgets/detail_sliver_app_bar.dart';
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final posterUrl = _getImageUrl(movie);
    final backdropUrl = _getImageUrl(movie, coverType: 'fanart');

    // Watch for movie credits
    final creditsAsyncValue = ref.watch(movieCreditsProvider(movie.id!));

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          // Backdrop and title area
          DetailSliverAppBar(
            title: movie.title ?? 'Unknown',
            fanartUrl: backdropUrl,
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
