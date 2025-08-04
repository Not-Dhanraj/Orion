import 'package:client/src/features/series/presentation/series_details_page.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:client/src/shared/media_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/series/presentation/series_home_controller.dart';
import 'package:sonarr/sonarr.dart';

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
            var crossAxisCount = (constraints.maxWidth / 175).floor().clamp(
              1,
              7,
            ); // Ensure at least 1 and at most 6 columns
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
                      crossAxisCount: crossAxisCount,
                      childAspectRatio: 0.68,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      final seriesItem = series[index];
                      final poster = seriesItem.images?.firstWhere(
                        (image) => image.coverType == MediaCoverTypes.poster,
                        orElse: () => MediaCover(),
                      );
                      return MediaWidget(
                        index: index,
                        title: seriesItem.title ?? "Unknown",
                        year: seriesItem.year?.toString() ?? "0000",
                        imgUrl: poster?.remoteUrl,
                        count: crossAxisCount,
                        rating: seriesItem.ratings?.value?.toString() ?? "0.0",
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  SeriesDetailsPage(series: seriesItem),
                            ),
                          );
                        },
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
