import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/radarr/presentation/view/radarr_detail_screen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

final moviesProvider = FutureProvider<List<RadarrMovie>>((ref) async {
  final radarr = ref.watch(radarrProvider);
  return await radarr.movie.getAll();
});

class RadarrScreen extends ConsumerStatefulWidget {
  const RadarrScreen({super.key});

  @override
  ConsumerState<RadarrScreen> createState() => _RadarrScreenState();
}

class _RadarrScreenState extends ConsumerState<RadarrScreen> {
  @override
  Widget build(BuildContext context) {
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

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Movies',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 2,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add movie functionality could be added here
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Add movie functionality coming soon!'),
            ),
          );
        },
        backgroundColor: colorScheme.primaryContainer,
        foregroundColor: colorScheme.onPrimaryContainer,
        elevation: 4,
        child: const Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surfaceContainerHighest.withOpacity(0.3),
              colorScheme.surface,
            ],
            stops: const [0.0, 0.3],
          ),
        ),
        child: SafeArea(
          child: moviesValue.when(
            data: (movies) {
              // Sort movies
              final sortedMovies = [...movies]
                ..sort((a, b) => (a.title ?? '').compareTo(b.title ?? ''));

              if (sortedMovies.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.movie_outlined,
                        size: 64,
                        color: colorScheme.onSurfaceVariant.withOpacity(0.5),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No movies found',
                        style: TextStyle(
                          color: colorScheme.onSurfaceVariant,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }

              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 16,
                ),
                padding: const EdgeInsets.all(16),
                itemCount: sortedMovies.length,
                itemBuilder: (context, index) {
                  final m = sortedMovies[index];
                  final posterUrl = getPosterUrl(m);

                  return Entry.offset(
                    yOffset: 100,
                    duration: const Duration(milliseconds: 300),
                    child: Entry.opacity(
                      duration: const Duration(milliseconds: 300),
                      child: Hero(
                        tag: m.id!,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    RadarrDetailScreen(movie: m),
                              ),
                            );
                          },
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
            error: (err, stack) => ErrorView(
              error: err,
              onRetry: () => ref.refresh(moviesProvider),
            ),
          ),
        ),
      ),
    );
  }
}
