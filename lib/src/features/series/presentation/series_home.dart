import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/series/presentation/series_home_controller.dart';

class SeriesHome extends ConsumerWidget {
  const SeriesHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesAsyncValue = ref.watch(seriesHomeControllerProvider);

    return seriesAsyncValue.when(
      data: (series) {
        if (series.isEmpty) {
          return const Center(
            child: Text('No series found. Add a series to get started.'),
          );
        }

        return Center(
          child: ListView.builder(
            itemCount: series.length,
            itemBuilder: (context, index) {
              final seriesItem = series[index];
              return ListTile(title: Text(seriesItem.title!));
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, color: Colors.red, size: 60),
              const SizedBox(height: 16),
              Text(
                'Error loading series',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(error.toString(), textAlign: TextAlign.center),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.refresh(seriesHomeControllerProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
