import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/radarr/provider/movie_detail_provider.dart';
import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/radarr/view/widgets/movie_details.dart';
import 'package:client/features/radarr/view/widgets/movie_information_card.dart';
import 'package:client/core/widgets/overview_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

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
    final movieDetailValue = ref.watch(movieDetailProvider(movie.id!));
    final theme = Theme.of(context);

    return movieDetailValue.when(
      data: (movieDetail) {
        final fanartUrl = _getImageUrl(movieDetail, coverType: 'fanart');
        final posterUrl = _getImageUrl(movieDetail, coverType: 'poster');

        return Scaffold(
          backgroundColor: theme.colorScheme.surface,
          body: CustomScrollView(
            slivers: [
              DetailSliverAppBar(
                title: movieDetail.title ?? 'Details',
                fanartUrl: fanartUrl,
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.background,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieDetails(movie: movieDetail, posterUrl: posterUrl),
                      const SizedBox(height: 24.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: OverviewCard(
                          overview: movieDetail.overview ?? 'No plot summary available.',
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: MovieInformationCard(movie: movieDetail),
                      ),
                      const SizedBox(height: 24.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              ref.invalidate(movieDetailProvider(movie.id!));
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Refresh'),
            backgroundColor: theme.primaryColor,
            foregroundColor: theme.colorScheme.onPrimary,
          ),
        );
      },
      loading: () =>
          const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (err, stack) => Scaffold(
        body: ErrorView(
          error: err.toString(),
          onRetry: () => ref.refresh(movieDetailProvider(movie.id!)),
        ),
      ),
    );
  }
}