import 'package:client/features/sonarr/application/provider/add_series_provider/add_series_provider.dart';
import 'package:client/features/sonarr/application/provider/all_series_provider/all_series_provider.dart';
import 'package:client/features/sonarr/presentation/add_series/widgets/empty_state.dart';
import 'package:client/features/sonarr/presentation/add_series/widgets/loading_indicator.dart';
import 'package:client/features/sonarr/presentation/add_series/widgets/no_results.dart';
import 'package:client/features/sonarr/presentation/add_series/widgets/search_bar.dart';
import 'package:client/features/sonarr/presentation/add_series/widgets/series_card.dart';
import 'package:client/features/sonarr/presentation/add_series_details/view/add_series_details_screen.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/safe_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class AddSeriesScreen extends ConsumerStatefulWidget {
  const AddSeriesScreen({super.key});

  @override
  ConsumerState<AddSeriesScreen> createState() => _AddSeriesScreenState();
}

class _AddSeriesScreenState extends ConsumerState<AddSeriesScreen> {
  late final TextEditingController searchController;
  final scrollController = ScrollController();
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addSeriesNotifierProvider.notifier).clearSearch();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    scrollController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addSeriesNotifierProvider);
    final notifier = ref.read(addSeriesNotifierProvider.notifier);

    if (searchController.text != state.searchTerm && state.searchTerm.isEmpty) {
      searchController.text = state.searchTerm;
    }

    Future<void> addSeries(SonarrSeriesLookup series) async {
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddSeriesDetailsScreen(series: series),
        ),
      );

      if (result == true) {
        if (series.tvdbId != null) {
          notifier.setSeriesAsAdded(series.tvdbId!);
          // Invalidate the allSeriesProvider to refresh the list
          ref.invalidate(allSeriesProvider);
        }

        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('${series.title} added successfully'),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
          ),
        );
      }
    }

    int calculateCrossAxisCount(BuildContext context) {
      double width = MediaQuery.of(context).size.width;
      if (width > 1400) return 6;
      if (width > 1200) return 5;
      if (width > 900) return 4;
      if (width > 600) return 3;
      if (width > 400) return 2;
      return 1;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Builder(
          builder: (context) => AppBar(
            title: const Text(
              'Add Series',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            elevation: 0,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBarWidget(
              onSearch: (query) => notifier.searchSeries(query),
              onClear: () => notifier.clearSearch(),
              searchController: searchController,
              focusNode: focusNode,
              isLoading: state.isLoading,
            ),
            Expanded(
              child: state.isLoading
                  ? LoadingIndicator(searchTerm: state.searchTerm)
                  : !state.isSearched
                  ? EmptyState(onStartTyping: () => focusNode.requestFocus())
                  : state.searchResults.isEmpty
                  ? NoResults(
                      searchTerm: state.searchTerm,
                      onClear: () {
                        notifier.clearSearch();
                        focusNode.requestFocus();
                      },
                      onTryAgain: () =>
                          notifier.searchSeries(searchController.text),
                    )
                  : RefreshIndicator(
                      onRefresh: () =>
                          notifier.searchSeries(searchController.text),
                      child: Scrollbar(
                        controller: scrollController,
                        child: GridView.builder(
                          controller: scrollController,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: calculateCrossAxisCount(
                                  context,
                                ),
                                childAspectRatio: 0.65,
                                crossAxisSpacing:
                                    MediaQuery.of(context).size.width > 600
                                    ? 16
                                    : 12,
                                mainAxisSpacing:
                                    MediaQuery.of(context).size.width > 600
                                    ? 20
                                    : 16,
                              ),
                          padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width > 600
                                ? 20.0
                                : 16.0,
                          ),
                          itemCount: state.searchResults.length,
                          itemBuilder: (context, index) {
                            final series = state.searchResults[index];
                            final isInLibrary =
                                state.existingSeriesMap[series.tvdbId] ?? false;

                            // Use our SafeEntry widget to prevent animation/layout issues
                            return SafeEntry(
                              key: ValueKey('series_${series.tvdbId}_$index'),
                              yOffset: 100,
                              opacity:
                                  0.0, // Start fully transparent and fade in
                              duration: const Duration(milliseconds: 300),
                              child: SeriesCard(
                                series: series,
                                isInLibrary: isInLibrary,
                                onAdd: () => addSeries(series),
                              ),
                            );
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
