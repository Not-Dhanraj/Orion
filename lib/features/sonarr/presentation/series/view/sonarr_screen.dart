import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/sonarr/data/series_provider/series_provider.dart';
import 'package:client/features/sonarr/presentation/add_series/view/add_series_screen.dart';
import 'package:client/features/sonarr/presentation/queue/view/sonarr_queue_screen.dart';
import 'package:client/features/sonarr/presentation/series/widgets/series_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SonarrScreen extends ConsumerWidget {
  const SonarrScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesValue = ref.watch(seriesProvider);

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
        data: (series) => SeriesGridView(series: series),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) =>
            ErrorView(error: err, onRetry: () => ref.refresh(seriesProvider)),
      ),
    );
  }
}
