import 'package:client/src/features/series/presentation/series_edit/series_edit_controller.dart';
import 'package:client/src/features/series/presentation/series_edit/widgets/series_monitoring_options_new.dart';
import 'package:client/src/features/series/presentation/series_edit/widgets/series_quality_dropdown.dart';
import 'package:client/src/features/series/presentation/series_edit/widgets/series_type_dropdown.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesEditPage extends ConsumerWidget {
  final SeriesResource series;
  const SeriesEditPage({super.key, required this.series});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    final seriesEditController = ref.watch(
      seriesEditControllerProvider(series.id!),
    );

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: seriesEditController.when(
          data: (state) => _buildContent(context, ref, state, theme),
          loading: () => const Padding(
            padding: EdgeInsets.all(24.0),
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stack) => Center(
            child: ErrorWidgetCe(
              errorMessage: error.toString(),
              // onRetry: () {
              //   ref.invalidate(
              //     seriesEditControllerProvider(series.id!),
              //   );
              // },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    dynamic state,
    ThemeData theme,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: series.images?.isNotEmpty == true
                    ? NetworkImage(series.images!.first.remoteUrl ?? '')
                    : null,
                backgroundColor: theme.colorScheme.primaryContainer,
                child: series.images?.isEmpty == true
                    ? Icon(Icons.tv, color: theme.colorScheme.primary)
                    : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      series.title ?? 'Unknown Series',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (series.year != null)
                      Text(
                        series.year.toString(),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close),
                tooltip: 'Close',
              ),
            ],
          ),
        ),
        Flexible(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SeriesMonitoringOptions(
                    series: state.series ?? SeriesResource(),
                    onSeriesChanged: (updatedSeries) {
                      ref
                          .read(
                            seriesEditControllerProvider(series.id!).notifier,
                          )
                          .updateSeries(updatedSeries);
                    },
                  ),
                  const SizedBox(height: 8),
                  QualityProfileDropdown(
                    series: state.series ?? SeriesResource(),
                    qualityProfiles: state.qualityProfiles ?? [],
                    onSeriesChanged: (updatedSeries) {
                      ref
                          .read(
                            seriesEditControllerProvider(series.id!).notifier,
                          )
                          .updateSeries(updatedSeries);
                    },
                  ),
                  const SizedBox(height: 8),
                  SeriesTypeDropdown(
                    series: state.series ?? SeriesResource(),
                    onSeriesChanged: (updatedSeries) {
                      ref
                          .read(
                            seriesEditControllerProvider(series.id!).notifier,
                          )
                          .updateSeries(updatedSeries);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 8),
              FilledButton(
                onPressed: state.hasChanges
                    ? () async {
                        await ref
                            .read(
                              seriesEditControllerProvider(series.id!).notifier,
                            )
                            .saveChanges();

                        if (context.mounted) {
                          Navigator.pop(context);
                        }
                      }
                    : null,
                child: const Text('Save Changes'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
