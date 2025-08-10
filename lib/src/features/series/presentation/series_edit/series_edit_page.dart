import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/features/series/presentation/series_edit/series_edit_controller.dart';
import 'package:client/src/features/series/presentation/series_edit/widgets/series_monitoring_options.dart';
import 'package:client/src/features/series/presentation/series_edit/widgets/series_quality_dropdown.dart';
import 'package:client/src/features/series/presentation/series_edit/widgets/series_type_dropdown.dart';
import 'package:client/src/shared/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        constraints: BoxConstraints(
          maxWidth: 500,
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        child: seriesEditController.when(
          data: (state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(color: theme.colorScheme.primary),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      if (series.images?.isNotEmpty == true)
                        ShaderMask(
                          shaderCallback: (rect) {
                            return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                theme.colorScheme.primary.withCustomOpacity(
                                  0.7,
                                ),
                                theme.colorScheme.primary,
                              ],
                            ).createShader(rect);
                          },
                          blendMode: BlendMode.xor,
                          child: CachedNetworkImage(
                            imageUrl:
                                series.images!
                                    .firstWhere(
                                      (i) =>
                                          i.coverType == MediaCoverTypes.fanart,
                                      orElse: () => series.images!.first,
                                    )
                                    .remoteUrl ??
                                '',
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorWidget: (_, __, ___) => const SizedBox(),
                          ),
                        ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Row(
                          children: [
                            if (series.images?.isNotEmpty == true)
                              const SizedBox(width: 16),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Edit Series',
                                    style: theme.textTheme.labelLarge?.copyWith(
                                      color: theme.colorScheme.onPrimary
                                          .withCustomOpacity(0.8),
                                    ),
                                  ),
                                  Text(
                                    series.title ?? 'Unknown Title',
                                    style: theme.textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.onPrimary,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),

                            IconButton(
                              icon: Icon(
                                Icons.close,
                                color: theme.colorScheme.onPrimary,
                              ),
                              onPressed: () => Navigator.of(context).pop(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Flexible(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          SeriesMonitoringOptions(
                            series: state.series ?? SeriesResource(),
                            onSeriesChanged: (updatedSeries) {
                              ref
                                  .read(
                                    seriesEditControllerProvider(
                                      series.id!,
                                    ).notifier,
                                  )
                                  .updateSeries(updatedSeries);
                            },
                          ),
                          const SizedBox(height: 16),
                          SeriesTypeDropdown(
                            series: state.series ?? SeriesResource(),
                            onSeriesChanged: (updatedSeries) {
                              ref
                                  .read(
                                    seriesEditControllerProvider(
                                      series.id!,
                                    ).notifier,
                                  )
                                  .updateSeries(updatedSeries);
                            },
                          ),
                          const SizedBox(height: 16),
                          QualityProfileDropdown(
                            series: state.series ?? SeriesResource(),
                            qualityProfiles: state.qualityProfiles,
                            onSeriesChanged: (updatedSeries) {
                              ref
                                  .read(
                                    seriesEditControllerProvider(
                                      series.id!,
                                    ).notifier,
                                  )
                                  .updateSeries(updatedSeries);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(color: theme.colorScheme.surface),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 12),
                      FilledButton.icon(
                        icon: const Icon(Icons.save),
                        label: const Text('Save Changes'),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          backgroundColor: state.hasChanges
                              ? theme.colorScheme.primary
                              : theme.colorScheme.primary.withCustomOpacity(
                                  0.6,
                                ),
                        ),
                        onPressed: state.hasChanges
                            ? () async {
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const SizedBox(height: 16),
                                        CircularProgressIndicator(
                                          color: theme.colorScheme.primary,
                                        ),
                                        const SizedBox(height: 24),
                                        Text(
                                          'Saving changes...',
                                          style: theme.textTheme.titleMedium,
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'This may take a moment',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                color: theme
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                    ),
                                  ),
                                );

                                await ref
                                    .read(
                                      seriesEditControllerProvider(
                                        series.id!,
                                      ).notifier,
                                    )
                                    .saveChanges();

                                if (context.mounted) {
                                  // Store the ScaffoldMessenger before popping dialogs
                                  final scaffoldMessenger =
                                      ScaffoldMessenger.of(context);

                                  // Pop the loading dialog
                                  Navigator.of(context).pop();
                                  // Pop the edit dialog
                                  Navigator.of(context).pop();

                                  // Show snackbar after navigation using the stored ScaffoldMessenger
                                  scaffoldMessenger.showSnackBar(
                                    SnackBar(
                                      content: Row(
                                        children: [
                                          const Icon(
                                            Icons.check_circle,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 12),
                                          Expanded(
                                            child: Text(
                                              'Successfully updated "${series.title}"',
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      backgroundColor: Colors.green.shade600,
                                      behavior: SnackBarBehavior.floating,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      margin: const EdgeInsets.all(16),
                                      duration: const Duration(seconds: 4),
                                      action: SnackBarAction(
                                        label: 'OK',
                                        textColor: Colors.white,
                                        onPressed: () {},
                                      ),
                                    ),
                                  );
                                }
                              }
                            : null,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: CircularProgressIndicator(),
            ),
          ),
          error: (error, stack) => ErrorWidgetCe(
            errorMessage: 'Failed to load series data: ${error.toString()}',
          ),
        ),
      ),
    );
  }
}
