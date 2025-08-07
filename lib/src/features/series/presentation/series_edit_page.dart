import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/features/series/presentation/series_edit_controller.dart';
import 'package:client/src/features/series/presentation/widgets/edit_page/series_monitoring_options.dart';
import 'package:client/src/features/series/presentation/widgets/edit_page/series_quality_dropdown.dart';
import 'package:client/src/features/series/presentation/widgets/edit_page/series_type_dropdown.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sonarr/sonarr.dart';

class SeriesEditPage extends ConsumerWidget {
  final int seriesId;
  const SeriesEditPage({super.key, required this.seriesId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesEditController = ref.watch(
      seriesEditControllerProvider(seriesId),
    );
    var theme = Theme.of(context);

    return PopScope(
      child: Scaffold(
        body: seriesEditController.when(
          data: (state) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  titleSpacing: 0,
                  title: Text("Edit Series"),
                  floating: true,
                  snap: true,
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  actions: [
                    AnimatedOpacity(
                      opacity: state.hasChanges ? 1.0 : 0.6,
                      duration: const Duration(milliseconds: 200),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.save_outlined),
                          label: const Text('SAVE'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: state.hasChanges
                                ? theme.colorScheme.primary
                                : theme.colorScheme.primary.withAlpha(180),
                            foregroundColor: theme.colorScheme.onPrimary,
                            elevation: 2,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                          ),
                          onPressed: state.hasChanges
                              ? () => ref
                                    .read(
                                      seriesEditControllerProvider(
                                        seriesId,
                                      ).notifier,
                                    )
                                    .saveChanges()
                              : null,
                        ),
                      ),
                    ),
                  ],
                ),
                SliverPadding(
                  padding: EdgeInsets.all(12),
                  sliver: SliverMasonryGrid.extent(
                    maxCrossAxisExtent: 600,
                    mainAxisSpacing: 12.0,
                    crossAxisSpacing: 12.0,
                    itemBuilder: (context, index) {
                      final widgets = [
                        Card(
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 12,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CachedNetworkImage(
                                    width: 120,
                                    memCacheWidth: 300,
                                    height: 180,
                                    imageUrl:
                                        state.series?.images
                                            ?.firstWhere(
                                              (image) =>
                                                  image.coverType ==
                                                  MediaCoverTypes.poster,
                                              orElse: () => MediaCover(),
                                            )
                                            .remoteUrl ??
                                        '',
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        state.series?.title ?? 'Unknown Series',
                                        style: Theme.of(
                                          context,
                                        ).textTheme.titleLarge,
                                      ),
                                      if (state.series?.year != null)
                                        Text(
                                          'Year: ${state.series?.year}',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                        ),
                                      if (state.series?.network != null)
                                        Text(
                                          'Network: ${state.series?.network}',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SeriesMonitoringOptions(
                          series: state.series ?? SeriesResource(),
                          onSeriesChanged: (updatedSeries) {
                            ref
                                .read(
                                  seriesEditControllerProvider(
                                    seriesId,
                                  ).notifier,
                                )
                                .updateSeries(updatedSeries);
                          },
                        ),
                        SeriesTypeDropdown(
                          series: state.series ?? SeriesResource(),
                          onSeriesChanged: (updatedSeries) {
                            ref
                                .read(
                                  seriesEditControllerProvider(
                                    seriesId,
                                  ).notifier,
                                )
                                .updateSeries(updatedSeries);
                          },
                        ),
                        QualityProfileDropdown(
                          series: state.series ?? SeriesResource(),
                          qualityProfiles: state.qualityProfiles,
                          onSeriesChanged: (updatedSeries) {
                            ref
                                .read(
                                  seriesEditControllerProvider(
                                    seriesId,
                                  ).notifier,
                                )
                                .updateSeries(updatedSeries);
                          },
                        ),
                      ];
                      return widgets[index];
                    },
                    childCount: 4,
                  ),
                ),
              ],
            );
          },
          error: (error, stackTrace) =>
              ErrorWidgetCe(errorMessage: error.toString()),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
