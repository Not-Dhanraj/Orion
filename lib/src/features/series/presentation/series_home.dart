import 'package:client/src/shared/error_widget.dart';
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

        return LayoutBuilder(
          builder: (context, constraints) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: const Text('Series'),
                  floating: true,
                  snap: true,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  sliver: SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (constraints.maxWidth / 175)
                          .floor()
                          .clamp(1, 6),
                      childAspectRatio: 0.68,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      final seriesItem = series[index];
                      return Card(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              seriesItem.images!.isNotEmpty
                                  ? Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                        child: Image.network(
                                          fit: BoxFit.cover,
                                          seriesItem.images![2].remoteUrl!,
                                        ),
                                      ),
                                    )
                                  : const Placeholder(),
                              SizedBox(height: 8.0),
                              Text(
                                seriesItem.title ?? 'Unknown Title',
                                maxLines: 2,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: series.length,
                  ),
                ),
              ],
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) =>
          ErrorWidgetCe(errorMessage: error.toString()),
    );
  }
}
