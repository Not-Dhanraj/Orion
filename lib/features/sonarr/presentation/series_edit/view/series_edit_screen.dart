import 'package:client/features/sonarr/presentation/series_edit/controller/series_edit_controller.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/monitoring_options.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/quality_profile_dropdown.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/series_edit_header.dart';
import 'package:client/features/sonarr/presentation/series_edit/widgets/series_type_dropdown.dart';
import 'package:client/core/widgets/safe_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesEditScreen extends ConsumerWidget {
  final SonarrSeries series;

  const SeriesEditScreen({super.key, required this.series});

  Future<void> _saveSeries(BuildContext context, WidgetRef ref) async {
    try {
      await ref
          .read(seriesEditControllerProvider(series).notifier)
          .saveSeries();
      if (!context.mounted) return;
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      final navigator = Navigator.of(context);
      if (!context.mounted) return;
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Text('${series.title} has been updated'),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 2),
        ),
      );
      navigator.pop(true);
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error updating series: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(seriesEditControllerProvider(series));

    return PopScope(
      canPop: !state.hasChanges,
      onPopInvokedWithResult: (bool didPop, bool? result) {
        if (didPop) {
          return;
        }
        showDialog<bool>(
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
        ).then((result) {
          if (result ?? false) {
            if (!context.mounted) return;
            Navigator.of(context).pop();
          }
        });
      },
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Builder(
            builder: (context) => AppBar(
              title: const Text(
                'Edit Series',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              elevation: 0,
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
                                ? () => _saveSeries(context, ref)
                                : null,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: theme.colorScheme.surface,
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.shadow.withAlpha(10),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(
              16.0, // left
              20.0, // top
              16.0, // right
              16.0, // bottom
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
                          .read(seriesEditControllerProvider(series).notifier)
                          .updateSeries(updatedSeries);
                    },
                  ),
          ),
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
        // Use SafeEntry for header animation
        SafeEntry(
          key: ValueKey('series_edit_header_${series.id}'),
          duration: const Duration(milliseconds: 350),
          yOffset: 40.0,
          opacity: 0.0,
          curve: Curves.easeOutCubic,
          child: SeriesEditHeader(series: series),
        ),
        const SizedBox(height: 28.0),

        // Monitoring section
        SafeEntry(
          key: const ValueKey('monitoring_section'),
          duration: const Duration(milliseconds: 400),
          yOffset: 30.0,
          opacity: 0.0,
          curve: Curves.easeOutCubic,
          child: MonitoringOptions(
            series: series,
            onSeriesChanged: onSeriesChanged,
          ),
        ),
        const SizedBox(height: 16.0),

        // Series Type section
        SafeEntry(
          key: const ValueKey('series_type_section'),
          duration: const Duration(milliseconds: 450),
          yOffset: 30.0,
          opacity: 0.0,
          curve: Curves.easeOutCubic,
          child: SeriesTypeDropdown(
            series: series,
            onSeriesChanged: onSeriesChanged,
          ),
        ),
        const SizedBox(height: 16.0),

        // Quality Profile section
        SafeEntry(
          key: const ValueKey('quality_profile_section'),
          duration: const Duration(milliseconds: 500),
          yOffset: 30.0,
          opacity: 0.0,
          curve: Curves.easeOutCubic,
          child: QualityProfileDropdown(
            series: series,
            onSeriesChanged: onSeriesChanged,
          ),
        ),
        const SizedBox(height: 40.0),
      ],
    );
  }
}
