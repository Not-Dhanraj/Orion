import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class RadarrDetailScreen extends StatelessWidget {
  final RadarrMovie movie;

  const RadarrDetailScreen({super.key, required this.movie});

  String? _getImageUrl(RadarrMovie movie) {
    try {
      final fanart = movie.images?.firstWhere(
        (image) => image.coverType == 'fanart',
      );
      if (fanart?.remoteUrl != null) {
        return fanart?.remoteUrl;
      }
    } catch (e) {
      // Ignore and try poster
    }
    try {
      final poster = movie.images?.firstWhere(
        (image) => image.coverType == 'poster',
      );
      if (poster?.remoteUrl != null) {
        return poster?.remoteUrl;
      }
    } catch (e) {
      // Ignore
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = _getImageUrl(movie);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                movie.title ?? 'Unknown Title',
                style: const TextStyle(
                  shadows: [Shadow(blurRadius: 8, color: Colors.black)],
                ),
              ),
              background: imageUrl != null
                  ? CachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover)
                  : Container(color: Colors.grey),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(movie.overview ?? 'No overview available.'),
                  const SizedBox(height: 16),
                  Text('Status: ${movie.status?.name ?? 'Unknown'}'),
                  const SizedBox(height: 8),
                  Text('Year: ${movie.year}'),
                  const SizedBox(height: 8),
                  Text('Monitored: ${movie.monitored == true ? 'Yes' : 'No'}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
