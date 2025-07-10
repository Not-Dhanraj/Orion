import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/sonarr/view/add_series_screen.dart';
import 'package:client/features/sonarr/view/sonarr_detail_screen.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddSeriesScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
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
              return Hero(
                tag: s.id!,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SonarrDetailScreen(series: s),
                      ),
                    );
                  },
                  child: MediaItemCard(
                    title: s.title ?? 'Unknown Title',
                    status: s.status?.toString() ?? 'Unknown Status',
                    posterUrl: posterUrl,
                  ),
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
