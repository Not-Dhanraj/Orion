import 'package:client/core/widgets/error_view.dart';
import 'package:client/features/sonarr/application/provider/add_series_details_provider/add_series_details_provider.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/additional_options_card.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/loading_view.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/series_configuration_card.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/series_header_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:entry/entry.dart';

class AddSeriesDetailsScreen extends ConsumerWidget {
  final SonarrSeriesLookup series;

  const AddSeriesDetailsScreen({super.key, required this.series});

  Future<void> _addSeries(
    BuildContext context,
    WidgetRef ref,
    SonarrSeriesLookup series,
  ) async {
    final provider = addSeriesDetailsNotifierProvider(series);
    final notifier = ref.read(provider.notifier);
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    final success = await notifier.addSeries();

    if (!context.mounted) return;

    if (success) {
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(Icons.check_circle, color: Colors.white),
              const SizedBox(width: 8),
              Expanded(child: Text('${series.title} added successfully')),
            ],
          ),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
      navigator.pop(true);
    } else {
      final error = ref.read(provider).error;
      scaffoldMessenger.showSnackBar(
        SnackBar(
          content: Row(
            children: [
              const Icon(Icons.error_outline, color: Colors.white),
              const SizedBox(width: 8),
              Expanded(child: Text('Failed to add series: $error')),
            ],
          ),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    }
  }

  Widget _buildResponsiveLayout(BuildContext context, List<Widget> children) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 900) {
      // Large screen layout - Two columns
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Entry.offset(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutCubic,
              xOffset: -20,
              child: Entry.opacity(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutCubic,
                child: children[0],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Entry.offset(
                  duration: const Duration(milliseconds: 450),
                  delay: const Duration(milliseconds: 50),
                  curve: Curves.easeOutCubic,
                  xOffset: 20,
                  child: Entry.opacity(
                    duration: const Duration(milliseconds: 450),
                    delay: const Duration(milliseconds: 50),
                    curve: Curves.easeOutCubic,
                    child: children[1],
                  ),
                ),
                const SizedBox(height: 20),
                Entry.offset(
                  duration: const Duration(milliseconds: 500),
                  delay: const Duration(milliseconds: 100),
                  curve: Curves.easeOutCubic,
                  xOffset: 20,
                  child: Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 100),
                    curve: Curves.easeOutCubic,
                    child: children[2],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    if (screenWidth > 600) {
      // Medium screen layout - Mixed
      return Column(
        children: [
          Entry.offset(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutCubic,
            yOffset: -20,
            child: Entry.opacity(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutCubic,
              child: children[0],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Entry.offset(
                  duration: const Duration(milliseconds: 450),
                  delay: const Duration(milliseconds: 50),
                  curve: Curves.easeOutCubic,
                  xOffset: -20,
                  child: Entry.opacity(
                    duration: const Duration(milliseconds: 450),
                    delay: const Duration(milliseconds: 50),
                    curve: Curves.easeOutCubic,
                    child: children[1],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Entry.offset(
                  duration: const Duration(milliseconds: 500),
                  delay: const Duration(milliseconds: 100),
                  curve: Curves.easeOutCubic,
                  xOffset: 20,
                  child: Entry.opacity(
                    duration: const Duration(milliseconds: 500),
                    delay: const Duration(milliseconds: 100),
                    curve: Curves.easeOutCubic,
                    child: children[2],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    // Small screen layout - Single column
    return Column(
      children: [
        Entry.offset(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          yOffset: -20,
          child: Entry.opacity(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutCubic,
            child: children[0],
          ),
        ),
        const SizedBox(height: 20),
        Entry.offset(
          duration: const Duration(milliseconds: 450),
          delay: const Duration(milliseconds: 50),
          curve: Curves.easeOutCubic,
          yOffset: 20,
          child: Entry.opacity(
            duration: const Duration(milliseconds: 450),
            delay: const Duration(milliseconds: 50),
            curve: Curves.easeOutCubic,
            child: children[1],
          ),
        ),
        const SizedBox(height: 20),
        Entry.offset(
          duration: const Duration(milliseconds: 500),
          delay: const Duration(milliseconds: 100),
          curve: Curves.easeOutCubic,
          yOffset: 20,
          child: Entry.opacity(
            duration: const Duration(milliseconds: 500),
            delay: const Duration(milliseconds: 100),
            curve: Curves.easeOutCubic,
            child: children[2],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = addSeriesDetailsNotifierProvider(series);
    final state = ref.watch(provider);
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: Text(
          series.title ?? 'Add Series',
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 2,
        centerTitle: true,
        scrolledUnderElevation: 2,
        shadowColor: theme.colorScheme.shadow.withOpacity(0.5),
        actions: [
          if (!state.isLoading)
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                icon: Icon(
                  Icons.check_circle_rounded,
                  color: theme.colorScheme.primary,
                ),
                onPressed: () => _addSeries(context, ref, series),
                tooltip: 'Add Series',
                style: IconButton.styleFrom(
                  backgroundColor: theme.colorScheme.primaryContainer
                      .withOpacity(0.7),
                  elevation: 1,
                ),
              ),
            ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              theme.colorScheme.surfaceContainerHighest.withOpacity(0.4),
              theme.colorScheme.surface,
            ],
            stops: const [0.0, 0.5],
          ),
        ),
        child: state.isLoading
            ? const LoadingView()
            : state.error != null
            ? ErrorView(
                error: state.error ?? 'Unknown error',
                onRetry: () => ref.refresh(provider),
              )
            : SafeArea(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20.0),
                  physics: const BouncingScrollPhysics(),
                  child: _buildResponsiveLayout(context, [
                    SeriesHeaderCard(series: series),
                    SeriesConfigurationCard(series: series),
                    AdditionalOptionsCard(series: series),
                  ]),
                ),
              ),
      ),
      bottomNavigationBar: !state.isLoading && state.error == null
          ? Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.shadow.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Add Series to your library',
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () => _addSeries(context, ref, series),
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('ADD SERIES'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: theme.colorScheme.onPrimary,
                      elevation: 2,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
