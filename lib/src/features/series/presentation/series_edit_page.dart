import 'package:client/src/features/series/presentation/series_edit_controller.dart';
import 'package:client/src/features/series/presentation/widgets/edit_page/series_quality_dropdown.dart';
import 'package:client/src/features/series/presentation/widgets/edit_page/series_type_dropdown.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesEditPage extends ConsumerWidget {
  final int seriesId;
  const SeriesEditPage({super.key, required this.seriesId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seriesEditController = ref.watch(
      seriesEditControllerProvider(seriesId),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Series')),
      body: seriesEditController.when(
        data: (state) {
          if (state.series == null) {
            return const ErrorWidgetCe(errorMessage: 'No series to edit');
          }
          return Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SeriesTypeDropdown(
                      series: state.series ?? SeriesResource(),
                      onSeriesChanged: (updatedSeries) {
                        ref
                            .read(
                              seriesEditControllerProvider(seriesId).notifier,
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
                              seriesEditControllerProvider(seriesId).notifier,
                            )
                            .updateSeries(updatedSeries);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        error: (error, stackTrace) =>
            ErrorWidgetCe(errorMessage: error.toString()),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
