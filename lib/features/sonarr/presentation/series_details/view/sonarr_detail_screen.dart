import 'package:client/core/widgets/detail_sliver_app_bar.dart';
import 'package:client/core/widgets/overview_card.dart';
import 'package:client/features/sonarr/data/series_management_provider/series_management_provider.dart';
import 'package:client/features/sonarr/presentation/seasons/view/seasons_page.dart';
import 'package:client/features/sonarr/presentation/series_details/widgets/series_details.dart';
import 'package:client/features/sonarr/presentation/shared/widgets/series_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SonarrDetailScreen extends ConsumerWidget {
  final SonarrSeries series;

  const SonarrDetailScreen({super.key, required this.series});

  String? _getImageUrl(SonarrSeries series, {String coverType = 'poster'}) {
    try {
      final image = series.images?.firstWhere(
        (image) => image.coverType == coverType,
      );
      return image?.remoteUrl;
    } catch (e) {
      // Ignore if not found
    }
    return null;
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    final fanartUrl = _getImageUrl(series, coverType: 'fanart');
    final posterUrl = _getImageUrl(series, coverType: 'poster');
    final bool isMonitored = series.monitored ?? false;

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          DetailSliverAppBar(
            title: 'Details',
            fanartUrl: fanartUrl,
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                tooltip: 'Refresh series data',
                onPressed: () {
                  // Refresh series data
                  ref.invalidate(seriesProvider(series.id!));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Refreshing series data...'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline),
                tooltip: 'Delete Series',
                onPressed: () => _showDeleteSeriesDialog(context, ref),
              ),
              SeriesActionButtons(series: series),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.shadow.withAlpha(25),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SeriesDetails(series: series, posterUrl: posterUrl),

                  // Status indicators
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: isMonitored
                                ? theme.colorScheme.primary.withAlpha(38)
                                : theme.colorScheme.error.withAlpha(38),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                isMonitored
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 16,
                                color: isMonitored
                                    ? theme.colorScheme.primary
                                    : theme.colorScheme.error,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                isMonitored ? 'Monitored' : 'Not Monitored',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: isMonitored
                                      ? theme.colorScheme.primary
                                      : theme.colorScheme.error,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.secondary.withAlpha(38),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.tv,
                                size: 16,
                                color: theme.colorScheme.secondary,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                series.status ?? 'Unknown',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.secondary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24.0),

                  // Overview section with enhanced styling
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Overview',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: OverviewCard(
                      overview: series.overview ?? 'No plot summary available.',
                    ),
                  ),

                  // Air status badges
                  // const SizedBox(height: 16.0),

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //   child: Container(
                  //     width: double.infinity,
                  //     padding: const EdgeInsets.symmetric(
                  //       vertical: 10,
                  //       horizontal: 16,
                  //     ),
                  //     decoration: BoxDecoration(
                  //       color: (series.status?.toLowerCase() == 'continuing')
                  //           ? Colors.green.withOpacity(0.2)
                  //           : Colors.amber.withOpacity(0.2),
                  //       borderRadius: BorderRadius.circular(8),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Icon(
                  //           (series.status?.toLowerCase() == 'continuing')
                  //               ? Icons.play_circle_filled
                  //               : Icons.pause_circle_filled,
                  //           color:
                  //               (series.status?.toLowerCase() == 'continuing')
                  //               ? Colors.green
                  //               : Colors.amber,
                  //           size: 20,
                  //         ),
                  //         const SizedBox(width: 8),
                  //         Text(
                  //           (series.status?.toLowerCase() == 'continuing')
                  //               ? 'Series is currently airing'
                  //               : 'Series is not currently airing',
                  //           style: theme.textTheme.bodyMedium?.copyWith(
                  //             fontWeight: FontWeight.bold,
                  //             color:
                  //                 (series.status?.toLowerCase() == 'continuing')
                  //                 ? Colors.green
                  //                 : Colors.amber.shade800,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 24.0),

                  // Series Information section
                  const SizedBox(height: 24.0),

                  // Episodes section with enhanced UI
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.tv_rounded,
                          color: theme.colorScheme.primary,
                          size: 24,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Episodes',
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SeasonsPage(initialSeries: series),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primaryContainer,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          color: theme.colorScheme.shadow
                                              .withAlpha(25),
                                          blurRadius: 4,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.video_library,
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'View Seasons & Episodes',
                                          style: theme.textTheme.titleMedium
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          'Browse all episodes by season',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                color: theme
                                                    .colorScheme
                                                    .onSurface
                                                    .withAlpha(178),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme
                                          .surfaceContainerHighest,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              if (series.seasons?.isNotEmpty == true) ...[
                                const SizedBox(height: 12),
                                const Divider(),
                                const SizedBox(height: 8),
                                Text(
                                  () {
                                    // Filter out specials (season number 0)
                                    final regularSeasons =
                                        series.seasons
                                            ?.where(
                                              (season) =>
                                                  season.seasonNumber != 0,
                                            )
                                            .toList() ??
                                        [];
                                    final specialsCount =
                                        series.seasons!.length -
                                        regularSeasons.length;

                                    String text =
                                        '${regularSeasons.length} Season${regularSeasons.length > 1 ? 's' : ''} available';
                                    if (specialsCount > 0) {
                                      text +=
                                          ' (+ $specialsCount Special${specialsCount > 1 ? 's' : ''})';
                                    }
                                    return text;
                                  }(),
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Additional information card
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Series Info',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildStatItem(
                                  context,
                                  'Type',
                                  series.seriesType!.value.toString(),
                                  Icons.category,
                                ),
                                _buildStatItem(
                                  context,
                                  'Network',
                                  series.network ?? 'Unknown',
                                  Icons.wifi,
                                ),
                                _buildStatItem(
                                  context,
                                  'Year',
                                  '${series.year ?? 'N/A'}',
                                  Icons.calendar_today,
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            // Rating information if available
                            if (series.ratings?.value != null) ...[
                              const Divider(),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.amber,
                                    size: 28,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '${series.ratings!.value}/10',
                                    style: theme.textTheme.headlineSmall
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '(${series.ratings!.votes ?? 0} votes)',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onSurface
                                          .withAlpha(178),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Media Info section
                  const SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Media Info',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildStatCounter(
                                  context,
                                  'Runtime',
                                  '${series.runtime ?? 0} min',
                                  Icons.timer,
                                ),
                                _buildStatCounter(
                                  context,
                                  'Status',
                                  series.status ?? 'Unknown',
                                  Icons.live_tv,
                                ),
                                _buildStatCounter(
                                  context,
                                  'Quality',
                                  'Profile ${series.qualityProfileId ?? 0}',
                                  Icons.high_quality,
                                ),
                              ],
                            ),
                            if (series.firstAired != null) ...[
                              const SizedBox(height: 16),
                              const Divider(),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.event,
                                    color: theme.colorScheme.primary,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'First aired: ${_formatDate(series.firstAired!)}',
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            // Air time if available
                            if (series.airTime != null &&
                                series.airTime!.isNotEmpty) ...[
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    color: theme.colorScheme.primary,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    'Air time: ${series.airTime}',
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withAlpha(25),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: theme.colorScheme.onPrimaryContainer,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurface.withAlpha(178),
          ),
        ),
      ],
    );
  }

  Widget _buildStatCounter(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withAlpha(25),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: theme.colorScheme.onSecondaryContainer,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.onSurface.withAlpha(178),
          ),
        ),
      ],
    );
  }

  // Shows a dialog to confirm series deletion
  void _showDeleteSeriesDialog(BuildContext context, WidgetRef ref) async {
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final seriesManagementNotifier = ref.read(seriesManagementProvider.notifier);
    
    // Confirm deletion with the user
    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: false, // Prevent closing by tapping outside
      builder: (context) => AlertDialog(
        title: const Text('Delete Series'),
        content: Text(
          'Are you sure you want to delete "${series.title}"?\n\n'
          'This will remove the entire series from Sonarr server.',
        ),
        actions: [
          TextButton(
            onPressed: () => navigator.pop(false),
            child: const Text('CANCEL'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () => navigator.pop(true),
            child: const Text('DELETE'),
          ),
        ],
      ),
    );

    if (confirmed == true && series.id != null) {
      // Show loading indicator
      final loadingOverlay = _showLoadingOverlay(context, 'Deleting series...');
      
      try {
        final result = await seriesManagementNotifier.deleteSeries(
          series.id!,
        );

        // Hide loading indicator
        loadingOverlay.remove();

        if (result) {
          // Notify user of success
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('${series.title} has been deleted'),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 2),
            ),
          );

          // Pop back to the series list screen
          if (navigator.canPop()) {
            navigator.pop(); // Pop back to series list
          }
        } else {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('Failed to delete ${series.title}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } catch (e) {
        // Hide loading indicator if there's an error
        loadingOverlay.remove();
        
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Error deleting series: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
  
  // Helper method to show a loading overlay during deletion process
  OverlayEntry _showLoadingOverlay(BuildContext context, String message) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Container(
        color: Colors.black54,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
    overlay.insert(overlayEntry);
    return overlayEntry;
  }
}
