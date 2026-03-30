import 'package:client/src/features/series/presentation/series_add/series_search_page.dart';
import 'package:client/src/shared/widgets/library/library_item_row.dart';
import 'package:client/src/shared/widgets/library/library_section_header.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_page.dart';
import 'package:client/src/features/series/presentation/series_library/series_library_controller.dart';
import 'package:client/src/utils/context_extensions.dart';
import 'package:client/src/shared/widgets/indicators/custom_error_state.dart';
import 'package:client/src/utils/series_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesLibraryPage extends ConsumerWidget {
  const SeriesLibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(seriesLibraryController);

    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(
        child: CustomErrorState(
          error: err,
          stackTrace: stack,
          onRetry: () => ref.invalidate(seriesLibraryController),
        ),
      ),
      data: (series) {
        return Stack(
          children: [
            if (series.isEmpty)
              Center(child: Text('No series in your library. :('))
            else
              ListView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: context.isDesktop ? 32 : 16,
                ),
                itemCount: series.length + 1,
                itemBuilder: (context, index) {
                  if (index == series.length) return const SizedBox(height: 30);

                  final item = series[index];
                  if (item is String) return LibrarySectionHeader(letter: item);

                  final seriesItem = item as SeriesResource;
                  return LibraryItemRow(
                    title: seriesItem.title ?? '',
                    year: '${seriesItem.year ?? ''}',
                    posterUrl: seriesItem.remotePosterUrlLink,
                    statusColor: seriesItem.statusColor,
                    onTap: () {
                      ref
                          .read(seriesDetailsController.notifier)
                          .initialize(seriesItem);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SeriesDetailsPage(series: seriesItem),
                        ),
                      );
                    },
                  );
                },
              ),
            Positioned(
              bottom: 16,
              right: 16,
              child: SafeArea(
                top: false,
                child: ElevatedButton(
                  onPressed: () => showSeriesSearchSheet(context),
                  child: const Text('SEARCH'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> showSeriesSearchSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      isScrollControlled: true,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const SeriesSearchPage(),
    );
  }
}
