import 'package:client/core/api/api_client.dart';
import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/sonarr/view/add_series_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class AddSeriesScreen extends ConsumerStatefulWidget {
  const AddSeriesScreen({super.key});

  @override
  ConsumerState<AddSeriesScreen> createState() => _AddSeriesScreenState();
}

class _AddSeriesScreenState extends ConsumerState<AddSeriesScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  final _focusNode = FocusNode();
  List<SonarrSeriesLookup> _searchResults = [];
  bool _isLoading = false;
  bool _isSearched = false;
  // Map to track which series are already in the library, keyed by tvdbId
  Map<int, bool> _existingSeriesMap = {};

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  // Check which series in the search results are already in the library
  Future<void> _checkExistingSeries() async {
    if (_searchResults.isEmpty) return;

    final sonarr = ref.read(sonarrProvider);
    try {
      // Get all series from the library
      final existingSeries = await sonarr.series.getAllSeries();

      // Create a map of tvdbId -> true for quick lookup
      final existingTvdbIds = {
        for (var series in existingSeries)
          if (series.tvdbId != null) series.tvdbId!: true,
      };

      setState(() {
        _existingSeriesMap = {
          for (var series in _searchResults)
            if (series.tvdbId != null)
              series.tvdbId!: existingTvdbIds.containsKey(series.tvdbId),
        };
      });
    } catch (e) {
      // Handle error silently
      debugPrint('Failed to check existing series: $e');
    }
  }

  Future<void> _searchSeries() async {
    final searchTerm = _searchController.text.trim();

    if (searchTerm.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a search term')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
      _isSearched = true;
    });

    // Hide keyboard after search
    _focusNode.unfocus();

    final sonarr = ref.read(sonarrProvider);

    try {
      final results = await sonarr.seriesLookup.getSeriesLookup(
        term: searchTerm,
      );
      setState(() {
        _searchResults = results;
      });

      // Check which series are already in the library
      await _checkExistingSeries();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to search for series: $e'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _addSeries(SonarrSeriesLookup series) async {
    // Navigate to the details screen
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddSeriesDetailsScreen(series: series),
      ),
    );

    // If we got a result back, it means the series was added successfully
    if (result == true) {
      // Update our map to show the series is now added
      if (series.tvdbId != null) {
        setState(() {
          _existingSeriesMap[series.tvdbId!] = true;
        });
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

  // Calculate grid items based on screen width
  int _calculateCrossAxisCount(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 1400) return 6;
    if (width > 1200) return 5;
    if (width > 900) return 4;
    if (width > 600) return 3;
    if (width > 400) return 2;
    return 1;
  }

  Widget _buildEmptyState() {
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
                onPressed: () => _focusNode.requestFocus(),
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

  Widget _buildNoResultsFound() {
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
                'We couldn\'t find any shows matching "${_searchController.text}". Try searching with a different term.',
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
                      _searchController.clear();
                      setState(() {
                        _searchResults = [];
                        _isSearched = false;
                      });
                      _focusNode.requestFocus();
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
                    onPressed: _searchSeries,
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

  Widget _buildSeriesCard(SonarrSeriesLookup series, bool isInLibrary) {
    // Get year if available
    String? year;
    if (series.year != null) {
      year = series.year.toString();
    }

    // Determine status color
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
        // Library status indicator
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
              onTap: isInLibrary ? null : () => _addSeries(series),
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
        // Year tag (if available)
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
        // Status indicator (if available)
        if (series.status != null)
          Positioned(
            bottom: 12, // Move up to avoid overlap with title
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

        // Make the whole card tappable
      ],
    );
  }

  Widget _buildSearchField(ThemeData theme) {
    return TextField(
      controller: _searchController,
      focusNode: _focusNode,
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
        suffixIcon: _searchController.text.isNotEmpty
            ? IconButton(
                icon: Icon(
                  Icons.clear,
                  color: theme.colorScheme.onSurface.withOpacity(0.7),
                  size: 20,
                ),
                onPressed: () {
                  _searchController.clear();
                  setState(() {
                    _searchResults = [];
                    _isSearched = false;
                  });
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
      onSubmitted: (_) => _searchSeries(),
    );
  }

  Widget _buildSearchButton(ThemeData theme) {
    return ElevatedButton.icon(
      onPressed: _isLoading ? null : _searchSeries,
      icon: _isLoading
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
        _isLoading ? 'Searching...' : 'Search',
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Series',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0, // Remove elevation when scrolled
        backgroundColor: theme.colorScheme.surface, // Match search bar color
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Search Bar & Button
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
                  // Horizontal layout for wider screens
                  ? Row(
                      children: [
                        Expanded(child: _buildSearchField(theme)),
                        const SizedBox(width: 12),
                        _buildSearchButton(theme),
                      ],
                    )
                  // Vertical layout for narrow screens
                  : Column(
                      children: [
                        _buildSearchField(theme),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerRight,
                          child: _buildSearchButton(theme),
                        ),
                      ],
                    ),
            ),

            // Results area
            Expanded(
              child: _isLoading
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
                              'Searching for "${_searchController.text}"',
                              style: theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    )
                  : !_isSearched
                  ? _buildEmptyState()
                  : _searchResults.isEmpty
                  ? _buildNoResultsFound()
                  : RefreshIndicator(
                      onRefresh: _searchSeries,
                      child: Scrollbar(
                        controller: _scrollController,
                        child: GridView.builder(
                          controller: _scrollController,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: _calculateCrossAxisCount(
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
                          itemCount: _searchResults.length,
                          itemBuilder: (context, index) {
                            final series = _searchResults[index];
                            final isInLibrary =
                                _existingSeriesMap[series.tvdbId] ?? false;
                            return _buildSeriesCard(series, isInLibrary);
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
