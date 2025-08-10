import 'package:client/src/features/movies/presentation/movie_detail/movie_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';

class MovieDetailsPage extends ConsumerStatefulWidget {
  final MovieResource movie;
  const MovieDetailsPage({super.key, required this.movie});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieDetailsPageState();
}

class _MovieDetailsPageState extends ConsumerState<MovieDetailsPage> {
  @override
  void initState() {
    super.initState();

    // Use a microtask to update the state after the build is complete
    Future.microtask(() {
      ref
          .read(movieDetailsControllerProvider.notifier)
          .initialize(widget.movie);
    });
  }

  @override
  Widget build(BuildContext context) {
    final movie = ref.watch(movieDetailsControllerProvider);
    final posterUrl =
        movie.images
            ?.firstWhere(
              (image) => image.coverType == MediaCoverTypes.poster,
              orElse: () => MediaCover(),
            )
            .remoteUrl ??
        '';
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Details"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder for movie details
              Text(
                movie.title ?? 'Unknown Movie',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                '${movie.year ?? 'Unknown Year'} • ${movie.runtime != null ? '${movie.runtime} min' : 'Unknown runtime'}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),
              if (movie.overview != null) ...[
                Text(
                  'Overview',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  movie.overview ?? '',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
              ],
              Text(
                'This is a placeholder for the full Movie Details page. Complete implementation will be added later.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
