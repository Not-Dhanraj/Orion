import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/sonarr/data/add_series_provider/add_series_provider.dart';
import 'package:client/features/sonarr/presentation/add_series_details/view/add_series_details_screen.dart';
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
    // Clear search results when the page is loaded
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

    // Only sync the search controller when user clears the search
    // This prevents text field from being emptied while typing
    if (searchController.text != state.searchTerm && state.searchTerm.isEmpty) {
      searchController.text = state.searchTerm;
    }

    Future<void> addSeries(SonarrSeriesLookup series) async {
      final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddSeriesDetailsScreen(series: series),
        ),
      );

      if (result == true) {
        if (series.tvdbId != null) {
          notifier.setSeriesAsAdded(series.tvdbId!);
        }

        ScaffoldMessenger.of(context).showSnackBar(
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

    Widget buildEmptyState() {
      final theme = Theme.of(context);
      return Center(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.search,
                    size: 64,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Search for your favorite TV shows',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  'Enter a title in the search bar above to find shows to add to your library',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                TextButton.icon(
                  onPressed: () => focusNode.requestFocus(),
                  icon: const Icon(Icons.keyboard),
                  label: const Text('Start typing to search'),
                  style: TextButton.styleFrom(
                    foregroundColor: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buildNoResultsFound() {
      final theme = Theme.of(context);
      return Center(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.sentiment_dissatisfied,
                    size: 64,
                    color: theme.colorScheme.error,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'No TV shows found',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  'We couldn\'t find any shows matching "${state.searchTerm}". Try searching with a different term.',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {
                        notifier.clearSearch();
                        focusNode.requestFocus();
                      },
                      icon: const Icon(Icons.clear),
                      label: const Text('Clear'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: theme.colorScheme.primary,
                        side: BorderSide(color: theme.colorScheme.primary),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton.icon(
                      onPressed: () =>
                          notifier.searchSeries(searchController.text),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Try Again'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        foregroundColor: theme.colorScheme.onPrimary,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buildSeriesCard(SonarrSeriesLookup series, bool isInLibrary) {
      String? year;
      if (series.year != null) {
        year = series.year.toString();
      }

      Color statusColor = Colors.grey;
      if (series.status != null) {
        switch (series.status!.toLowerCase()) {
          case 'continuing':
            statusColor = Colors.green;
            break;
          case 'ended':
            statusColor = Colors.orange;
            break;
          default:
            statusColor = Colors.grey;
        }
      }

      return Stack(
        children: [
          MediaItemCard(
            title: series.title ?? 'Unknown Title',
            status: '',
            posterUrl: series.images
                ?.firstWhere(
                  (image) => image.coverType == 'poster',
                  orElse: () => SonarrSeriesImage(remoteUrl: null),
                )
                .remoteUrl,
          ),
          Positioned(
            top: 11,
            right: 11,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: isInLibrary
                    ? Colors.green
                    : Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: InkWell(
                onTap: isInLibrary ? null : () => addSeries(series),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isInLibrary ? Icons.check : Icons.add,
                      color: Colors.white,
                      size: 16,
                    ),
                    if (isInLibrary) ...[
                      const SizedBox(width: 4),
                      const Text(
                        'In Library',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          if (year != null)
            Positioned(
              top: 11,
              left: 11,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text(
                  year,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          if (series.status != null)
            Positioned(
              bottom: 12,
              right: 11,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Text(
                  series.status!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      );
    }

    Widget buildSearchField(ThemeData theme) {
      return TextField(
        controller: searchController,
        focusNode: focusNode,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          hintText: 'Search for a TV show...',
          hintStyle: TextStyle(
            color: theme.colorScheme.onSurface.withOpacity(0.6),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: theme.colorScheme.primary.withOpacity(0.7),
          ),
          suffixIcon: searchController.text.isNotEmpty
              ? IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                    size: 20,
                  ),
                  onPressed: () {
                    searchController.clear();
                    notifier.clearSearch();
                  },
                )
              : null,
          filled: true,
          fillColor: theme.colorScheme.surfaceVariant.withOpacity(0.3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (_) => notifier.searchSeries(searchController.text),
      );
    }

    Widget buildSearchButton(ThemeData theme) {
      return ElevatedButton.icon(
        onPressed: state.isLoading
            ? null
            : () => notifier.searchSeries(searchController.text),
        icon: state.isLoading
            ? const SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                  color: Colors.white,
                ),
              )
            : const Icon(Icons.search, size: 18),
        label: Text(
          state.isLoading ? 'Searching...' : 'Search',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
    }

    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Series',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: theme.colorScheme.surface,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: MediaQuery.of(context).size.width > 600 ? 12 : 8,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    spreadRadius: 0,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: MediaQuery.of(context).size.width > 600
                  ? Row(
                      children: [
                        Expanded(child: buildSearchField(theme)),
                        const SizedBox(width: 12),
                        buildSearchButton(theme),
                      ],
                    )
                  : Column(
                      children: [
                        buildSearchField(theme),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerRight,
                          child: buildSearchButton(theme),
                        ),
                      ],
                    ),
            ),
            Expanded(
              child: state.isLoading
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            color: theme.colorScheme.primary,
                            strokeWidth: 3,
                          ),
                          const SizedBox(height: 24),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.surfaceVariant
                                  .withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Searching for "${state.searchTerm}"',
                              style: theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    )
                  : !state.isSearched
                  ? buildEmptyState()
                  : state.searchResults.isEmpty
                  ? buildNoResultsFound()
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
                            return buildSeriesCard(series, isInLibrary);
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
