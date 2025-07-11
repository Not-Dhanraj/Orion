import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/radarr/view/radarr_detail_screen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final moviesProvider = FutureProvider<List<RadarrMovie>>((ref) async {
  final radarr = ref.watch(radarrProvider);
  return await radarr.movie.getAll();
});

class RadarrScreen extends ConsumerWidget {
  const RadarrScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesValue = ref.watch(moviesProvider);

    String? getPosterUrl(RadarrMovie movie) {
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

    return Scaffold(
      appBar: AppBar(title: const Text('Radarr'), centerTitle: true),
      body: moviesValue.when(
        data: (movies) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            padding: const EdgeInsets.all(8),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final m = movies[index];
              final posterUrl = getPosterUrl(m);
              return Hero(
                tag: m.id!,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RadarrDetailScreen(movie: m),
                      ),
                    );
                  },
                  child: Entry.offset(
                    yOffset: 100,
                    duration: const Duration(milliseconds: 300),
                    child: Entry.opacity(
                      duration: const Duration(milliseconds: 300),

                      child: MediaItemCard(
                        title: m.title ?? 'No Title',
                        status: m.status?.name ?? 'No Status',
                        posterUrl: posterUrl,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) =>
            ErrorView(error: err, onRetry: () => ref.refresh(moviesProvider)),
      ),
    );
  }
}
