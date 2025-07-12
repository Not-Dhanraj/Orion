import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/radarr/presentation/movie_details/view/radarr_detail_screen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MoviesGridView extends StatelessWidget {
  final List<RadarrMovie> movies;

  const MoviesGridView({super.key, required this.movies});

  String? _getPosterUrl(RadarrMovie movie) {
    try {
      final remotePoster = movie.images?.firstWhere(
        (image) => image.coverType == 'poster',
      );
      if (remotePoster?.remoteUrl != null) {
        return remotePoster?.remoteUrl;
      }
    } catch (e) {
      // Ignore the error and return null if no poster is found.
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = switch (screenWidth) {
      >= 1400 => 6,
      >= 1200 => 5,
      >= 900 => 4,
      >= 600 => 3,
      >= 400 => 2,
      _ => 1,
    };

    // Sort movies alphabetically by title
    final sortedMovies = [...movies]
      ..sort((a, b) => (a.title ?? '').compareTo(b.title ?? ''));

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.65,
        crossAxisSpacing: 14,
        mainAxisSpacing: 16,
      ),
      padding: const EdgeInsets.fromLTRB(
        16,
        16,
        16,
        100,
      ), // Add extra bottom padding for FloatingActionButton and navigation bar
      itemCount: sortedMovies.length,
      itemBuilder: (context, index) {
        final movie = sortedMovies[index];
        final posterUrl = _getPosterUrl(movie);
        // Staggered animation effect for items
        return Entry.offset(
          yOffset: 50,
          xOffset: index.isEven ? -10 : 10,
          duration: Duration(milliseconds: 300 + (index % 5) * 50),
          child: Entry.opacity(
            duration: Duration(milliseconds: 300 + (index % 5) * 50),
            child: Hero(
              tag: movie.id!,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RadarrDetailScreen(movie: movie),
                    ),
                  );
                },
                child: MediaItemCard(
                  title: movie.title ?? 'Unknown Title',
                  status: _getMovieStatus(movie),
                  posterUrl: posterUrl,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // Get a readable status from movie object
  String _getMovieStatus(RadarrMovie movie) {
    if (movie.status == 'released') {
      return 'Released';
    } else if (movie.status == 'inCinemas') {
      return 'In Cinemas';
    } else if (movie.status == 'announced') {
      return 'Announced';
    } else if (movie.status == 'tba') {
      return 'TBA';
    }
    return 'Unknown';
  }
}
