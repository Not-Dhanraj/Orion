import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/features/sonarr/presentation/series_edit/controller/series_edit_controller.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/monitoring_options.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/quality_profile_dropdown.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/series_edit_header.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/series_type_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesEditScreen extends ConsumerWidget {
  final SonarrSeries series;

  const SeriesEditScreen({super.key, required this.series});

  Future<bool> _onWillPop(BuildContext context, WidgetRef ref) async {
    final hasChanges =
        ref.read(seriesEditControllerProvider(series)).hasChanges;
    if (!hasChanges) {
      return true;
    }

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Discard Changes?'),
        content: const Text(
          'You have unsaved changes that will be lost if you leave this screen.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('STAY'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('DISCARD'),
          ),
        ],
      ),
    );

    return result ?? false;
  }

  Future<void> _saveSeries(BuildContext context, WidgetRef ref) async {
    try {
      await ref
          .read(seriesEditControllerProvider(series).notifier)
          .saveSeries();

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('${series.title} has been updated'),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error updating series: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(seriesEditControllerProvider(series));

    return WillPopScope(
      onWillPop: () => _onWillPop(context, ref),
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            DetailSliverAppBar(
              title: 'Edit Series',
              actions: [
                state.isLoading
                    ? Container(
                        padding: const EdgeInsets.all(16),
                        child: const SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      )
                    : AnimatedOpacity(
                        opacity: state.hasChanges ? 1.0 : 0.6,
                        duration: const Duration(milliseconds: 200),
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.save_outlined),
                          label: const Text('SAVE'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: state.hasChanges
                                ? theme.colorScheme.primaryContainer
                                : theme.colorScheme.primaryContainer
                                    .withOpacity(0.7),
                            foregroundColor:
                                theme.colorScheme.onPrimaryContainer,
                          ),
                          onPressed: state.hasChanges
                              ? () => _saveSeries(context, ref)
                              : null,
                        ),
                      ),
                const SizedBox(width: 16),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.shadow.withAlpha(25),
                      blurRadius: 10,
                      offset: const Offset(0, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: state.isLoading
                      ? const Center(
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Column(
                              children: [
                                CircularProgressIndicator(),
                                SizedBox(height: 16),
                                Text('Saving changes...'),
                              ],
                            ),
                          ),
                        )
                      : SeriesEditForm(
                          series: state.series,
                          onSeriesChanged: (updatedSeries) {
                            ref
                                .read(seriesEditControllerProvider(series)
                                    .notifier)
                                .updateSeries(updatedSeries);
                          },
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeriesEditForm extends StatelessWidget {
  final SonarrSeries series;
  final Function(SonarrSeries) onSeriesChanged;

  const SeriesEditForm({
    super.key,
    required this.series,
    required this.onSeriesChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SeriesEditHeader(series: series),
        const SizedBox(height: 24.0),
        _buildSectionHeader(context, 'Monitoring Options', Icons.visibility),
        const SizedBox(height: 12.0),
        MonitoringOptions(series: series, onSeriesChanged: onSeriesChanged),
        const SizedBox(height: 24.0),
        _buildSectionHeader(context, 'Series Type', Icons.category),
        const SizedBox(height: 12.0),
        SeriesTypeDropdown(series: series, onSeriesChanged: onSeriesChanged),
        const SizedBox(height: 24.0),
        _buildSectionHeader(context, 'Quality Profile', Icons.high_quality),
        const SizedBox(height: 12.0),
        QualityProfileDropdown(
          series: series,
          onSeriesChanged: onSeriesChanged,
        ),
        const SizedBox(height: 32.0),
      ],
    );
  }

  Widget _buildSectionHeader(
    BuildContext context,
    String title,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.primary),
        const SizedBox(width: 8.0),
        Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
