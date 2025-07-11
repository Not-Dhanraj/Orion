import 'package:client/features/sonarr/application/add_series_service.dart';
import 'package:client/features/sonarr/data/add_series_details_provider/add_series_details_provider.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/add_series_button.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/additional_options_card.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/error_view.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/loading_view.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/series_configuration_card.dart';
import 'package:client/features/sonarr/presentation/add_series_details/widgets/series_header_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class AddSeriesDetailsScreen extends ConsumerWidget {
  final SonarrSeriesLookup series;

  const AddSeriesDetailsScreen({super.key, required this.series});

  Widget _buildResponsiveLayout(BuildContext context, List<Widget> children) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 900) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: children[0]),
          const SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                children[1],
                const SizedBox(height: 12),
                children[2],
                const SizedBox(height: 12),
                children[3],
              ],
            ),
          ),
        ],
      );
    }

    if (screenWidth > 600) {
      return Column(
        children: [
          children[0],
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: children[1]),
              const SizedBox(width: 16),
              Expanded(child: children[2]),
            ],
          ),
          const SizedBox(height: 12),
          children[3],
        ],
      );
    }

    return Column(
      children: [
        children[0],
        const SizedBox(height: 12),
        children[1],
        const SizedBox(height: 12),
        children[2],
        const SizedBox(height: 12),
        children[3],
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = addSeriesDetailsNotifierProvider(series);
    final state = ref.watch(provider);
    final theme = Theme.of(context);
    final addSeriesService = ref.watch(addSeriesServiceProvider(series));

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: Text(
          series.title ?? 'Add Series',
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          if (!state.isLoading)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Icon(Icons.check, color: theme.colorScheme.primary),
                onPressed: () => addSeriesService.addSeries(context),
                tooltip: 'Add Series',
              ),
            ),
        ],
      ),
      body: state.isLoading
          ? const LoadingView()
          : state.error != null
              ? ErrorView(
                  error: state.error,
                  onTryAgain: () => ref.refresh(provider),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: _buildResponsiveLayout(
                    context,
                    [
                      SeriesHeaderCard(series: series),
                      SeriesConfigurationCard(series: series),
                      AdditionalOptionsCard(series: series),
                      AddSeriesButton(
                        onPressed: () => addSeriesService.addSeries(context),
                      ),
                    ],
                  ),
                ),
    );
  }
}
