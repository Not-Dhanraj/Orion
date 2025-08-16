import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_add_card.dart';
import 'package:client/src/shared/page/custom_error_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesAddPage extends ConsumerStatefulWidget {
  const SeriesAddPage({super.key});

  @override
  ConsumerState<SeriesAddPage> createState() => _SeriesAddPageState();
}

class _SeriesAddPageState extends ConsumerState<SeriesAddPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  bool _hasSearched = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final seriesAddState = ref.watch(seriesAddControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Add New Series')),
      body: seriesAddState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) =>
            CustomErrorPage(errorMessage: error.toString()),
        data: (state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search bar with integrated button
                TextField(
                  controller: _searchController,
                  focusNode: _searchFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Search for a TV series by name...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: theme.colorScheme.primary,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: theme.colorScheme.surfaceContainerLow,
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_searchController.text.isNotEmpty)
                          IconButton(
                            icon: const Icon(Icons.clear),
                            tooltip: 'Clear search',
                            onPressed: () {
                              _searchController.clear();
                              // Clear search results but don't trigger a new search
                              if (_hasSearched) {
                                ref
                                    .read(seriesAddControllerProvider.notifier)
                                    .searchSeries('');
                                setState(() {
                                  _hasSearched = false;
                                });
                              }
                            },
                          ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          height: 40,
                          width: 80,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_searchController.text.isNotEmpty) {
                                ref
                                    .read(seriesAddControllerProvider.notifier)
                                    .searchSeries(_searchController.text);
                                setState(() {
                                  _hasSearched = true;
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              foregroundColor: theme.colorScheme.onPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text('Search'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onSubmitted: (value) async {
                    if (value.isNotEmpty) {
                      try {
                        await ref
                            .read(seriesAddControllerProvider.notifier)
                            .searchSeries(value);
                        setState(() {
                          _hasSearched = true;
                        });
                      } catch (e) {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.error,
                                    color: theme.colorScheme.error,
                                  ),
                                  const SizedBox(width: 12),
                                  Text('Error'),
                                ],
                              ),
                              content: Text(
                                'Failed to search: ${e.toString()}',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('OK'),
                                ),
                              ],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          );
                        }
                      }
                    }
                  },
                ),

                SizedBox(height: 8),

                // Status message - no longer showing here as we'll display errors in a dialog
                if (state.isSearching)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: CircularProgressIndicator()),
                  ),

                // Search results
                if (!state.isSearching && _hasSearched)
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final theme = Theme.of(context);

                        if (state.searchResults == null ||
                            state.searchResults!.isEmpty) {
                          return Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search_off,
                                  size: 80,
                                  color: theme.colorScheme.error
                                      .withCustomOpacity(0.7),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'No series found',
                                  style: theme.textTheme.headlineSmall
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            theme.colorScheme.onErrorContainer,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  'Try different keywords or check if the series is already in your library',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    color: theme.colorScheme.onErrorContainer,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 12),
                                FilledButton.icon(
                                  icon: const Icon(Icons.refresh),
                                  label: const Text('Try Another Search'),
                                  onPressed: () {
                                    _searchController.clear();
                                    _searchFocusNode.requestFocus();
                                  },
                                ),
                              ],
                            ),
                          );
                        }
                        return MasonryGridView.extent(
                          maxCrossAxisExtent: 500,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 0,
                          itemCount: state.searchResults!.length,
                          itemBuilder: (context, index) {
                            final series = state.searchResults![index];
                            return SeriesAddCard(series: series);
                          },
                        );
                      },
                    ),
                  ),

                // Initial instructions
                if (!_hasSearched && !state.isSearching)
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.movie_filter,
                            size: 80,
                            color: theme.colorScheme.primary.withCustomOpacity(
                              0.6,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Search for a TV series to add',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.onSurface,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Enter the name of a TV series in the search box above and press the Search button',
                            style: theme.textTheme.bodyLarge?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Helper method to build info badges

  // Helper method to get status color
}
