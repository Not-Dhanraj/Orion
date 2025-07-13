import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_flutter/radarr_flutter.dart';
import 'package:entry/entry.dart';

import 'package:client/features/radarr/application/provider/movie_management_provider/movie_release_provider.dart';

class ReleaseSelectionDialog extends ConsumerWidget {
  final List<RadarrRelease> releases;
  final String title;

  const ReleaseSelectionDialog({
    super.key,
    required this.releases,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // Determine if we're on a larger screen
    final isWideScreen = screenWidth > 600;

    return AlertDialog(
      backgroundColor: theme.colorScheme.surface,
      surfaceTintColor: Colors.transparent,
      actionsPadding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(),
          style: OutlinedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            side: BorderSide(color: theme.colorScheme.primary),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          child: const Text(
            'CANCEL',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.filter_alt_rounded,
                size: 24,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Divider(color: theme.colorScheme.outlineVariant),
        ],
      ),
      content: SizedBox(
        width: isWideScreen ? screenWidth * 0.7 : double.maxFinite,
        height: screenHeight * 0.7,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.download_rounded,
                      color: theme.colorScheme.primary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select a release to download:',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${releases.length} releases available',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: releases.length,
                itemBuilder: (context, index) {
                  final release = releases[index];

                  // Calculate delay for staggered animation
                  final delay = Duration(milliseconds: 30 * index);

                  return Entry.offset(
                    duration: const Duration(milliseconds: 300),
                    delay: delay,
                    curve: Curves.easeOutCubic,
                    yOffset: 30,
                    child: Entry.opacity(
                      duration: const Duration(milliseconds: 300),
                      delay: delay,
                      curve: Curves.easeOutCubic,
                      child: Card(
                      margin: const EdgeInsets.only(bottom: 12.0),
                      elevation: 3,
                      shadowColor: theme.colorScheme.shadow.withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: _getReleaseStatusColor(
                            theme,
                            release,
                          ).withAlpha(51),
                          width: 1.0,
                        ),
                      ),
                      child: ExpansionTile(
                        tilePadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        leading: _getReleaseStatusIcon(theme, release),
                        title: Text(
                          release.title ?? 'Unknown',
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(
                            top: 12.0,
                            bottom: 4.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                children: [
                                  _buildPrimaryInfoChip(
                                    theme,
                                    release.quality?.quality?.name ?? 'Unknown',
                                    theme.colorScheme.primary,
                                    icon: Icons.high_quality,
                                  ),
                                  _buildPrimaryInfoChip(
                                    theme,
                                    release.size != null
                                        ? _formatSize(release.size!)
                                        : 'Unknown',
                                    theme.colorScheme.secondary,
                                    icon: Icons.data_usage,
                                  ),
                                  if (release.ageHours != null)
                                    _buildPrimaryInfoChip(
                                      theme,
                                      _formatAge(release.ageHours!.toInt()),
                                      theme.colorScheme.tertiary,
                                      icon: Icons.access_time,
                                    ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Wrap(
                                spacing: 6,
                                runSpacing: 6,
                                children: [
                                  if (release.protocol != null)
                                    _buildInfoChip(
                                      theme,
                                      release.protocol!.name,
                                      release.protocol!.name.toLowerCase() ==
                                              'torrent'
                                          ? Colors.orange.shade700
                                          : Colors.blue.shade700,
                                    ),
                                  if (release.seeders != null)
                                    _buildInfoChip(
                                      theme,
                                      '${release.seeders} seeders',
                                      Colors.green.shade700,
                                    ),
                                  if (release.leechers != null)
                                    _buildInfoChip(
                                      theme,
                                      '${release.leechers} leechers',
                                      Colors.orange.shade700,
                                    ),
                                  if (release.approved == true)
                                    _buildInfoChip(
                                      theme,
                                      'Approved',
                                      Colors.green,
                                    )
                                  else if (release.approved == false)
                                    _buildInfoChip(
                                      theme,
                                      'Rejected',
                                      Colors.red,
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(),
                                const SizedBox(height: 8),
                                // Additional information
                                if (release.indexer != null)
                                  _buildDetailRow(
                                    theme,
                                    Icons.source,
                                    'Indexer',
                                    release.indexer ?? 'Unknown',
                                  ),
                                const SizedBox(height: 8),
                                if (release.publishDate != null)
                                  _buildDetailRow(
                                    theme,
                                    Icons.calendar_today,
                                    'Published',
                                    _formatDateTime(release.publishDate!),
                                  ),
                                if (release.seeders != null &&
                                    release.leechers != null) ...[
                                  const SizedBox(height: 8),
                                  _buildDetailRow(
                                    theme,
                                    Icons.group,
                                    'Peers',
                                    '${release.seeders} seeders, ${release.leechers} leechers',
                                  ),
                                ],
                                const SizedBox(height: 16),
                                // Rejection information
                                if (release.rejections != null &&
                                    release.rejections!.isNotEmpty) ...[
                                  const SizedBox(height: 16),
                                  _buildRejectionSection(
                                    theme,
                                    release.rejections!,
                                  ),
                                ],
                                const SizedBox(height: 20),
                                ElevatedButton.icon(
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                    final scaffoldMessenger =
                                        ScaffoldMessenger.of(context);

                                    try {
                                      await ref.read(
                                        downloadReleaseProvider(
                                          DownloadReleaseParams(
                                            guid: release.guid!,
                                            indexerId: release.indexerId!,
                                          ),
                                        ).future,
                                      );

                                      scaffoldMessenger.showSnackBar(
                                        SnackBar(
                                          content: Row(
                                            children: [
                                              const Icon(
                                                Icons.download_done,
                                                color: Colors.white,
                                              ),
                                              const SizedBox(width: 8),
                                              const Text('Release downloading'),
                                            ],
                                          ),
                                          behavior: SnackBarBehavior.floating,
                                          duration: const Duration(seconds: 2),
                                          backgroundColor: Colors.green,
                                        ),
                                      );
                                    } catch (e) {
                                      scaffoldMessenger.showSnackBar(
                                        SnackBar(
                                          content: Text('Error: $e'),
                                          behavior: SnackBarBehavior.floating,
                                          backgroundColor: Colors.red,
                                        ),
                                      );
                                    }
                                  },
                                  icon: const Icon(Icons.download),
                                  label: const Text('Download'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: theme.colorScheme.primary,
                                    foregroundColor:
                                        theme.colorScheme.onPrimary,
                                    minimumSize: const Size(
                                      double.infinity,
                                      45,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRejectionSection(ThemeData theme, List<String> rejections) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.warning_amber, color: Colors.red, size: 20),
            const SizedBox(width: 8),
            Text(
              'Rejections',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ...rejections.map(
          (rejection) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.remove_circle_outline,
                  color: Colors.red.shade300,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    rejection,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.red.shade700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(
    ThemeData theme,
    IconData icon,
    String label,
    String value,
  ) {
    return Row(
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.onSurfaceVariant),
        const SizedBox(width: 12),
        Text(
          '$label:',
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(child: Text(value, style: theme.textTheme.bodyMedium)),
      ],
    );
  }

  Widget _getReleaseStatusIcon(ThemeData theme, RadarrRelease release) {
    Color iconColor;
    IconData iconData;

    if (release.approved == true) {
      iconColor = Colors.green;
      iconData = Icons.check_circle;
    } else if (release.approved == false) {
      iconColor = Colors.red;
      iconData = Icons.cancel;
    } else {
      iconColor = theme.colorScheme.onSurfaceVariant;
      iconData = Icons.help_outline;
    }

    return Icon(iconData, color: iconColor, size: 24);
  }

  Color _getReleaseStatusColor(ThemeData theme, RadarrRelease release) {
    if (release.approved == true) {
      return Colors.green;
    } else if (release.approved == false) {
      return Colors.red;
    } else {
      return theme.colorScheme.outline;
    }
  }

  Widget _buildPrimaryInfoChip(
    ThemeData theme,
    String label,
    Color color, {
    IconData? icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withAlpha(38),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withAlpha(100), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 6),
          ],
          Text(
            label,
            style: theme.textTheme.labelMedium?.copyWith(
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChip(ThemeData theme, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withAlpha(70), width: 1),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  String _formatSize(int bytes) {
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    int i = 0;
    double size = bytes.toDouble();

    while (size > 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }

    return '${size.toStringAsFixed(i == 0 ? 0 : 1)} ${suffixes[i]}';
  }

  String _formatAge(int hours) {
    if (hours < 24) {
      return '$hours hour${hours == 1 ? '' : 's'}';
    } else {
      final days = (hours / 24).floor();
      return '$days day${days == 1 ? '' : 's'}';
    }
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 7) {
      return '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} day${difference.inDays == 1 ? '' : 's'} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hour${difference.inHours == 1 ? '' : 's'} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minute${difference.inMinutes == 1 ? '' : 's'} ago';
    } else {
      return 'Just now';
    }
  }
}
