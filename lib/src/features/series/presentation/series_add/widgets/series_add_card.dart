import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/features/series/presentation/series_add/series_add_controller.dart';
import 'package:client/src/features/series/presentation/series_add/widgets/series_add_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesAddCard extends ConsumerWidget {
  final SeriesResource series;
  const SeriesAddCard({super.key, required this.series});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final isCreating =
        ref.watch(seriesAddControllerProvider).value?.isCreating ?? false;

    final year = series.year;
    final status = series.status;
    final network = series.network;

    return Card(
      elevation: 1,
      shadowColor: theme.colorScheme.shadow.withCustomOpacity(0.2),
      child: InkWell(
        onTap: isCreating
            ? null
            : () => _showAddSeriesDialog(context, series, ref),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child:
                      series.images?.isNotEmpty == true &&
                          series.images!.any(
                            (i) => i.coverType == MediaCoverTypes.fanart,
                          )
                      ? CachedNetworkImage(
                          imageUrl:
                              series.images!
                                  .firstWhere(
                                    (i) =>
                                        i.coverType == MediaCoverTypes.fanart,
                                    orElse: () => series.images!.firstWhere(
                                      (i) =>
                                          i.coverType ==
                                              MediaCoverTypes.poster ||
                                          i.coverType == MediaCoverTypes.banner,
                                      orElse: () => series.images!.first,
                                    ),
                                  )
                                  .remoteUrl ??
                              '',
                          fit: BoxFit.cover,
                          errorWidget: (_, __, ___) => Container(
                            color: theme.colorScheme.surfaceContainerHighest,
                            child: Icon(
                              Icons.movie,
                              size: 50,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        )
                      : Container(
                          color: theme.colorScheme.surfaceContainerHighest,
                          child: Icon(
                            Icons.movie,
                            size: 50,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                ),

                // Gradient overlay
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withCustomOpacity(0.7),
                        ],
                        stops: const [0.5, 1.0],
                      ),
                    ),
                  ),
                ),

                // Title and badges
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          series.title ?? 'Unknown Title',
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 3.0,
                                color: Colors.black.withCustomOpacity(0.5),
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        // Info badges
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            if (year != null)
                              _InfoChip(
                                text: year.toString(),
                                icon: Icons.calendar_today_outlined,
                              ),
                            if (status != null)
                              _InfoChip(
                                text: status.toString(),
                                icon: Icons.info_outline,
                                color: _getStatusColor(
                                  context,
                                  status.toString(),
                                ),
                              ),
                            if (network != null)
                              _InfoChip(
                                text: network,
                                icon: Icons.wifi_tethering,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Add button overlay in top right
                Positioned(
                  top: 12,
                  right: 12,
                  child: Material(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add,
                            size: 16,
                            color: theme.colorScheme.onPrimary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Add',
                            style: TextStyle(
                              color: theme.colorScheme.onPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Overview section
            if (series.overview != null && series.overview!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overview',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      series.overview!,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(BuildContext context, String status) {
    final theme = Theme.of(context);

    switch (status.toLowerCase()) {
      case 'continuing':
        return Colors.green;
      case 'ended':
        return Colors.red;
      case 'upcoming':
        return Colors.blue;
      default:
        return theme.colorScheme.tertiary;
    }
  }

  void _showAddSeriesDialog(
    BuildContext context,
    SeriesResource series,
    WidgetRef ref,
  ) {
    ref.read(seriesAddControllerProvider.notifier).selectSeries(series);
    final theme = Theme.of(context);

    // Then show the dialog
    showDialog(
      context: context,
      builder: (context) {
        final state = ref.watch(seriesAddControllerProvider).value;
        final selectedSeries = state?.selectedSeries;
        final qualityProfiles = state?.qualityProfiles ?? [];

        return Dialog.fullscreen(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
          // clipBehavior: Clip.antiAlias,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            constraints: BoxConstraints(
              maxWidth: 500,
              maxHeight: MediaQuery.of(context).size.height * 0.9,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: series.images?.isNotEmpty == true
                            ? CachedNetworkImageProvider(
                                series.images!.first.remoteUrl ?? '',
                              )
                            : null,
                        backgroundColor: theme.colorScheme.primaryContainer,
                        child: series.images?.isEmpty == true
                            ? Icon(Icons.tv, color: theme.colorScheme.primary)
                            : null,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              series.title ?? 'Unknown Series',
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (series.year != null)
                              Text(
                                series.year.toString(),
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                        tooltip: 'Close',
                      ),
                    ],
                  ),
                ),

                // Configuration form
                Flexible(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: selectedSeries != null
                          ? SeriesConfigurationForm(
                              series: selectedSeries,
                              qualityProfiles: qualityProfiles,
                              onSeriesChanged: (updatedSeries) {
                                ref
                                    .read(seriesAddControllerProvider.notifier)
                                    .updateSelectedSeries(updatedSeries);
                              },
                            )
                          : const Center(
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: CircularProgressIndicator(),
                              ),
                            ),
                    ),
                  ),
                ),

                // Action buttons
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 12),
                      FilledButton.icon(
                        icon: const Icon(Icons.add),
                        label: const Text('Add Series'),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                        ),
                        onPressed: state?.isCreating == true
                            ? null
                            : () async {
                                if (selectedSeries == null) return;

                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (_) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const SizedBox(height: 16),
                                          CircularProgressIndicator(
                                            color: theme.colorScheme.primary,
                                          ),
                                          const SizedBox(height: 24),
                                          Text(
                                            'Adding ${series.title ?? "series"}...',
                                            style: theme.textTheme.titleMedium,
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            'This may take a moment',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                  color: theme
                                                      .colorScheme
                                                      .onSurfaceVariant,
                                                ),
                                            textAlign: TextAlign.center,
                                          ),
                                          const SizedBox(height: 16),
                                        ],
                                      ),
                                    );
                                  },
                                );

                                try {
                                  final seriesToAdd = ref
                                      .read(seriesAddControllerProvider)
                                      .maybeWhen(
                                        data: (data) =>
                                            data.selectedSeries ??
                                            SeriesResource(),
                                        orElse: () => SeriesResource(),
                                      );
                                  await ref
                                      .read(
                                        seriesAddControllerProvider.notifier,
                                      )
                                      .addSeries(seriesToAdd);
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Row(
                                          children: [
                                            const Icon(
                                              Icons.check_circle,
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 12),
                                            Expanded(
                                              child: Text(
                                                'Successfully added "${series.title}"',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        backgroundColor: Colors.green.shade600,
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        margin: const EdgeInsets.all(16),
                                        duration: const Duration(seconds: 4),
                                        action: SnackBarAction(
                                          label: 'OK',
                                          textColor: Colors.white,
                                          onPressed: () {},
                                        ),
                                      ),
                                    );
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  }
                                } catch (e) {
                                  if (context.mounted) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Failed to add series: ${e.toString()}',
                                        ),
                                        backgroundColor:
                                            theme.colorScheme.errorContainer,
                                        behavior: SnackBarBehavior.floating,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        margin: const EdgeInsets.all(16),
                                        duration: const Duration(seconds: 4),
                                      ),
                                    );
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  }
                                  return;
                                }
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? color;
  const _InfoChip({required this.text, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final badgeColor = color ?? theme.colorScheme.tertiary;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: badgeColor.withCustomOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: Colors.white),
          const SizedBox(width: 4),
          Text(
            text,
            style: theme.textTheme.labelSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
