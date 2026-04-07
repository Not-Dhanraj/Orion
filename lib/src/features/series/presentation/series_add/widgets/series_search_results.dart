import 'package:client/src/features/series/domain/series_add_state.dart';
import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/features/series/presentation/series_add/series_add_sheet.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_result_item.dart';
import 'package:client/src/shared/utils/series_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:client/src/shared/widgets/indicators/empty_state_widget.dart';

class SeriesSearchBody extends ConsumerWidget {
  const SeriesSearchBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(seriesAddController).requireValue;
    final results = state.searchResults;

    if (results == null) {
      return const EmptyStateWidget(
        icon: Icons.video_collection_outlined,
        title: 'Search for a TV series to add',
        subtitle: 'Enter a series name above and press SEARCH.',
      );
    }
    if (results.isEmpty) {
      return const EmptyStateWidget(
        icon: Icons.search_off_rounded,
        title: 'No series found',
        subtitle:
            'Try different keywords or check if the series is already in your library.',
      );
    }

    return _ResultsList(results: results, state: state);
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
        Expanded(
          child: ListView.builder(
            shrinkWrap: false,
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
            itemCount: results.length,
            itemBuilder: (context, index) {
              final series = results[index];
              final isAdded = state.addedIds?.contains(series.tvdbId) ?? false;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: SeriesResultItem(
                  series: series,
                  subtitle: _buildSubtitle(series),
                  imageUrl: series.remotePosterUrlLink ?? "",
                  isAdded: isAdded,
                  isCreating: state.isCreating,
                  onAdd: isAdded
                      ? null
                      : () => _openAddDialog(context, ref, series),
                ),
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
      builder: (_) => SeriesAddSheet(series: series),
    );
  }
}
