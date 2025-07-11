import 'package:client/core/widgets/error_view.dart';
import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/sonarr/data/series_provider/series_provider.dart';
import 'package:client/features/sonarr/presentation/series_details/view/sonarr_detail_screen.dart';
import 'package:client/features/sonarr/presentation/add_series/view/add_series_screen.dart';
import 'package:client/features/sonarr/presentation/queue/view/sonarr_queue_screen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

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
      appBar: AppBar(
        title: const Text('Sonarr'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            tooltip: 'Download Queue',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SonarrQueueScreen(),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddSeriesScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: seriesValue.when(
        data: (series) {
          // Calculate number of columns based on screen width
          final screenWidth = MediaQuery.of(context).size.width;
          final crossAxisCount = switch (screenWidth) {
            >= 1400 => 6, // Extra Extra large screens: 6 columns
            >= 1200 => 5, // Extra large screens: 5 columns
            >= 900 => 4, // Large screens: 4 columns
            >= 600 => 3, // Medium screens: 3 columns
            >= 400 => 2, // Small screens: 2 columns
            _ => 1, // Extra small screens: 1 column
          };

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 0.65,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            padding: const EdgeInsets.all(12),
            itemCount: series.length,
            itemBuilder: (context, index) {
              final s = series[index];
              final posterUrl = getPosterUrl(s);
              return Entry.offset(
                yOffset: 100,
                duration: const Duration(milliseconds: 300),
                child: Entry.opacity(
                  duration: const Duration(milliseconds: 300),
                  // hero under entry fo fix retriggering animation twice
                  child: Hero(
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
