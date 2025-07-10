import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final seriesProvider = FutureProvider<List<SonarrSeries>>((ref) async {
  final sonarr = ref.watch(sonarrProvider);
  return await sonarr.series.getAllSeries();
});

class SonarrScreen extends ConsumerWidget {
  const SonarrScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesValue = ref.watch(seriesProvider);

    String? getPosterUrl(SonarrSeries series) {
      try {
        final remotePoster = series.images?.firstWhere(
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
      appBar: AppBar(title: const Text('Sonarr'), centerTitle: true),
      body: seriesValue.when(
        data: (series) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            padding: const EdgeInsets.all(8),
            itemCount: series.length,
            itemBuilder: (context, index) {
              final s = series[index];
              final posterUrl = getPosterUrl(s);
              return Card(
                elevation: 4,
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    if (posterUrl != null)
                      CachedNetworkImage(
                        imageUrl: posterUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error, size: 50),
                      )
                    else
                      const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.tv, size: 40, color: Colors.grey),
                            SizedBox(height: 8),
                            Text(
                              'No Poster\nAvailable',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black,
                              Colors.black.withAlpha(170),
                              Colors.transparent,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              s.title ?? 'Unknown Title',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.fontSize,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              s.status?.toString() ?? 'Unknown Status',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white70,
                                fontSize: Theme.of(
                                  context,
                                ).textTheme.bodySmall?.fontSize,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) =>
            ErrorView(error: err, onRetry: () => ref.refresh(seriesProvider)),
      ),
    );
  }
}
