import 'package:client/src/features/series/presentation/series_add/series_add_page.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_page.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:client/src/shared/widgets/media_grid_items.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/src/features/series/presentation/series_home/series_home_controller.dart';
import 'package:sonarr/sonarr.dart';

class SeriesHome extends ConsumerWidget {
  const SeriesHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesAsyncValue = ref.watch(seriesHomeControllerProvider);

    return Entry.opacity(
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text('Series'),
                floating: true,
                snap: true,
              ),

              seriesAsyncValue.when(
                data: (series) {
                  if (series.isEmpty) {
                    return const SliverFillRemaining(
                      child: Center(
                        child: Text(
                          'No series found. Add a series to get started.',
                        ),
                      ),
                    );
                  }

                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    sliver: SliverGrid.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            (MediaQuery.of(context).size.width / 175)
                                .floor()
                                .clamp(1, 7),
                        childAspectRatio: 0.68,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        final seriesItem = series[index];

                        final imgUrl = seriesItem.images
                            ?.firstWhere(
                              (image) =>
                                  image.coverType == MediaCoverTypes.poster,
                              orElse: () => MediaCover(),
                            )
                            .remoteUrl;
                        return MediaGridItem(
                          title: seriesItem.title,
                          year: seriesItem.year,
                          imgUrl: imgUrl,
                          ratings: seriesItem.ratings?.value,
                          onTap: () {
                            ref
                                .read(seriesDetailsControllerProvider.notifier)
                                .initialize(seriesItem);

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
                  );
                },
                loading: () => const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (error, stackTrace) => SliverFillRemaining(
                  child: ErrorWidgetCe(errorMessage: error.toString()),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 20,
            right: 20,
            child: SafeArea(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SeriesAddPage(),
                    ),
                  );
                },
                tooltip: 'Add Series',
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
