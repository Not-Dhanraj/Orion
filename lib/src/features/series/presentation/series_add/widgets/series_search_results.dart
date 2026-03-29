import 'package:client/src/features/series/domain/series_add_state.dart';
import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/features/series/presentation/series_add/series_add_dialog.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_result_item.dart';
import 'package:client/src/utils/series_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesSearchBody extends ConsumerWidget {
  const SeriesSearchBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(seriesAddController).requireValue;
    final results = state.searchResults;

    if (results == null) return const _EmptyPrompt();
    if (results.isEmpty) return const _NoResults();

    return _ResultsList(results: results, state: state);
  }
}

class _EmptyPrompt extends StatelessWidget {
  const _EmptyPrompt();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_rounded,
            size: 72,
            color: cs.primary.withCustomOpacity(0.4),
          ),
          const SizedBox(height: 20),
          Text(
            'Search for a TV series to add',
            style: tt.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Enter a series name above and press SEARCH.',
            style: tt.bodyMedium!.copyWith(color: cs.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}

class _NoResults extends StatelessWidget {
  const _NoResults();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 72,
            color: cs.primary.withCustomOpacity(0.4),
          ),
          const SizedBox(height: 20),
          Text(
            'No series found',
            style: tt.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Try different keywords or check if the series is already in your library.',
            style: tt.bodyMedium!.copyWith(color: cs.onSurfaceVariant),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _ResultsList extends ConsumerWidget {
  final List<SeriesResource> results;
  final SeriesAddState state;

  const _ResultsList({required this.results, required this.state});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final hitCount = results.length.toString().padLeft(3, '0');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RESULTS / $hitCount HITS',
                style: tt.labelMedium!.copyWith(
                  color: cs.primary,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'SORT: RELEVANCE',
                style: tt.labelSmall!.copyWith(color: cs.outline),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
            itemCount: results.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final series = results[index];
              final isAdded = state.addedIds?.contains(series.tvdbId) ?? false;
              return SeriesResultItem(
                series: series,
                subtitle: _buildSubtitle(series),
                imageUrl: series.remotePosterUrlLink ?? "",
                isAdded: isAdded,
                isCreating: state.isCreating,
                onAdd: isAdded
                    ? null
                    : () => _openAddDialog(context, ref, series),
              );
            },
          ),
        ),
      ],
    );
  }

  String _buildSubtitle(SeriesResource series) => [
    if (series.year != null) series.year.toString(),
    if (series.network?.isNotEmpty == true) series.network!.toUpperCase(),
    if (series.status != null) series.status!.name.toUpperCase(),
  ].join(' • ');

  Future<void> _openAddDialog(
    BuildContext context,
    WidgetRef ref,
    SeriesResource series,
  ) async {
    ref.read(seriesAddController.notifier).selectSeriesToState(series);
    // await SeriesAddDialog.show(context, series);

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      builder: (_) => SeriesAddDialog(series: series),
    );
  }
}
