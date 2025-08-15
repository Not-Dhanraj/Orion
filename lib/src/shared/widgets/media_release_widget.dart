import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:with_opacity/with_opacity.dart';

class MediaReleaseWidget extends ConsumerStatefulWidget {
  /// This is deliberately typed as `List<dynamic>` to allow both
  /// `ReleaseResource` from Radarr and Sonarr.
  final List<dynamic> releases;

  final String title;

  final Future<void> Function(int indexerId, String guid) onDownloadRelease;

  final String Function(dynamic languages)? formatLanguages;

  const MediaReleaseWidget({
    super.key,
    required this.releases,
    required this.title,
    required this.onDownloadRelease,
    this.formatLanguages,
  });

  @override
  ConsumerState<MediaReleaseWidget> createState() => _MediaReleaseWidgetState();
}

class _MediaReleaseWidgetState extends ConsumerState<MediaReleaseWidget> {
  bool showRejected = true;

  @override
  Widget build(BuildContext context) {
    final releases = widget.releases;

    var filteredReleases = releases.where((release) {
      if (!showRejected && (release.rejections?.isNotEmpty ?? false)) {
        return false;
      }
      return true;
    }).toList();

    filteredReleases.sort((a, b) {
      final aRejected = a.rejections?.isNotEmpty ?? false;
      final bRejected = b.rejections?.isNotEmpty ?? false;

      if (aRejected != bRejected) {
        return aRejected ? 1 : -1;
      }

      if (a.seeders != null && b.seeders != null) {
        return b.seeders.compareTo(a.seeders);
      }

      return (b.size ?? 0).compareTo(a.size ?? 0);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Releases for ${widget.title}'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FilterChip(
                  label: Text(
                    'Show Rejected',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: showRejected
                          ? Theme.of(context).colorScheme.onSecondaryContainer
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  selected: showRejected,
                  checkmarkColor: Theme.of(
                    context,
                  ).colorScheme.onSecondaryContainer,
                  selectedColor: Theme.of(
                    context,
                  ).colorScheme.secondaryContainer,
                  onSelected: (selected) {
                    setState(() {
                      showRejected = selected;
                    });
                  },
                ),
                const SizedBox(width: 8),
                Text(
                  '${filteredReleases.length} releases',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),

            Expanded(
              child: filteredReleases.isEmpty
                  ? const Center(child: Text('No releases match your filters'))
                  : MasonryGridView.extent(
                      maxCrossAxisExtent: 800,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      itemCount: filteredReleases.length,

                      itemBuilder: (context, index) {
                        final release = filteredReleases[index];
                        final hasRejections =
                            release.rejections?.isNotEmpty ?? false;

                        String ageText = 'Unknown age';
                        if (release.publishDate != null) {
                          final now = DateTime.now();
                          final publishDate = release.publishDate;
                          final difference = now.difference(publishDate);

                          if (difference.inDays > 0) {
                            ageText = '${difference.inDays} days ago';
                          } else if (difference.inHours > 0) {
                            ageText = '${difference.inHours} hours ago';
                          } else {
                            ageText = '${difference.inMinutes} minutes ago';
                          }
                        }

                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: hasRejections
                                ? BorderSide(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.error.withCustomOpacity(0.5),
                                    width: 1.5,
                                  )
                                : BorderSide.none,
                          ),
                          margin: const EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 4,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              // Toggle expanded state for this item
                              // (This would require a state variable to track expanded items)
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: hasRejections
                                    ? LinearGradient(
                                        colors: [
                                          Theme.of(context).cardColor,
                                          Theme.of(context)
                                              .colorScheme
                                              .errorContainer
                                              .withCustomOpacity(0.15),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      )
                                    : null,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  // Quality indicator - now more compact
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 6,
                                                          vertical: 2,
                                                        ),
                                                    decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primaryContainer,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            4,
                                                          ),
                                                    ),
                                                    child: Text(
                                                      release
                                                              .quality
                                                              ?.quality
                                                              ?.name ??
                                                          'Unknown',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Text(
                                                      release.title ??
                                                          'Unknown Release',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                        color: hasRejections
                                                            ? Theme.of(context)
                                                                  .colorScheme
                                                                  .error
                                                            : null,
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 4),
                                              // Size and age in a row
                                              Wrap(
                                                spacing: 12,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.storage,
                                                        size: 14,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSurfaceVariant,
                                                      ),
                                                      const SizedBox(width: 4),
                                                      Text(
                                                        _formatFileSize(
                                                          release.size ?? 0,
                                                        ),
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .onSurfaceVariant,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Icon(
                                                        Icons.access_time,
                                                        size: 14,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSurfaceVariant,
                                                      ),
                                                      const SizedBox(width: 4),
                                                      Text(
                                                        ageText,
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .onSurfaceVariant,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        // Action buttons
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            if (release.infoUrl != null &&
                                                release.infoUrl.isNotEmpty)
                                              IconButton(
                                                icon: const Icon(
                                                  Icons.info_outline,
                                                  size: 20,
                                                ),
                                                constraints:
                                                    const BoxConstraints(),
                                                padding: const EdgeInsets.all(
                                                  8,
                                                ),
                                                tooltip: 'View release info',
                                                onPressed: () async {
                                                  Uri url = Uri.parse(
                                                    release.infoUrl
                                                            as String? ??
                                                        '',
                                                  );
                                                  if (!await launchUrl(url)) {
                                                    if (context.mounted) {
                                                      final currentContext =
                                                          context;
                                                      ScaffoldMessenger.of(
                                                        currentContext,
                                                      ).showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Could not launch ${release.infoUrl}',
                                                          ),
                                                          backgroundColor:
                                                              Colors.red,
                                                        ),
                                                      );
                                                    }
                                                    throw Exception(
                                                      'Could not launch ${release.infoUrl}',
                                                    );
                                                  }
                                                },
                                              ),
                                            const SizedBox(height: 4),
                                            SizedBox(
                                              height: 32,
                                              child: ElevatedButton.icon(
                                                icon: Icon(
                                                  Icons.download,
                                                  size: 14,
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.onPrimary,
                                                ),
                                                label: Text(
                                                  'Download',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.onPrimary,
                                                  ),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Theme.of(
                                                    context,
                                                  ).colorScheme.primary,
                                                  foregroundColor: Theme.of(
                                                    context,
                                                  ).colorScheme.onPrimary,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          6,
                                                        ),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 0,
                                                      ),
                                                ),
                                                onPressed: () async {
                                                  try {
                                                    await widget
                                                        .onDownloadRelease(
                                                          release.indexerId
                                                              as int,
                                                          release.guid
                                                              as String,
                                                        );

                                                    if (context.mounted) {
                                                      final currentContext =
                                                          context;
                                                      Navigator.of(
                                                        currentContext,
                                                      ).pop();
                                                      ScaffoldMessenger.of(
                                                        currentContext,
                                                      ).showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                            'Download started',
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                  } catch (e) {
                                                    if (context.mounted) {
                                                      final currentContext =
                                                          context;
                                                      ScaffoldMessenger.of(
                                                        currentContext,
                                                      ).showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Failed to download: ${e.toString()}',
                                                          ),
                                                          backgroundColor:
                                                              Colors.red,
                                                        ),
                                                      );
                                                    }
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 8),

                                    // Additional details in a grid layout - more compact for mobile
                                    Wrap(
                                      spacing: 6,
                                      runSpacing: 6,
                                      children: [
                                        if (release.indexer != null)
                                          _buildReleaseInfoTag(
                                            Icons.source,
                                            release.indexer,
                                            compact: true,
                                          ),
                                        if (release.protocol != null)
                                          _buildReleaseInfoTag(
                                            Icons.sync,
                                            release.protocol
                                                .toString()
                                                .split('.')
                                                .last,
                                            compact: true,
                                          ),
                                        // Language information for series
                                        if (widget.formatLanguages != null &&
                                            release.languages != null)
                                          _buildReleaseInfoTag(
                                            Icons.language,
                                            widget.formatLanguages!(
                                              release.languages,
                                            ),
                                            compact: true,
                                          ),
                                        if (release.seeders != null)
                                          _buildReleaseInfoTag(
                                            Icons.arrow_upward,
                                            '${release.seeders} seeders',
                                            color: _getSeedersColor(
                                              context,
                                              release.seeders,
                                            ),
                                            compact: true,
                                          ),
                                        if (release.leechers != null)
                                          _buildReleaseInfoTag(
                                            Icons.arrow_downward,
                                            '${release.leechers} leechers',
                                            compact: true,
                                          ),
                                      ],
                                    ),

                                    if (hasRejections) ...[
                                      const SizedBox(height: 8),
                                      const Divider(thickness: 0.5),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .errorContainer
                                              .withCustomOpacity(0.1),
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .error
                                                .withCustomOpacity(0.3),
                                            width: 0.5,
                                          ),
                                        ),
                                        padding: const EdgeInsets.all(6),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.error_outline,
                                                  size: 14,
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.error,
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  'Rejected:',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.error,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 2),
                                            ...release.rejections.map<Widget>(
                                              (reason) => Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 18.0,
                                                  top: 2.0,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .remove_circle_outline,
                                                      size: 12,
                                                      color: Theme.of(
                                                        context,
                                                      ).colorScheme.error,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Expanded(
                                                      child: Text(
                                                        reason,
                                                        style: TextStyle(
                                                          fontSize: 11,
                                                          color: Theme.of(
                                                            context,
                                                          ).colorScheme.error,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ],
                                ),
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

  Widget _buildReleaseInfoTag(
    IconData icon,
    String label, {
    Color? color,
    bool compact = false,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: compact ? 6 : 8,
        vertical: compact ? 2 : 4,
      ),
      decoration: BoxDecoration(
        color: Theme.of(
          context,
        ).colorScheme.surfaceContainerHighest.withCustomOpacity(0.7),
        borderRadius: BorderRadius.circular(compact ? 4 : 6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: compact ? 12 : 14,
            color: color ?? Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          SizedBox(width: compact ? 2 : 4),
          Text(
            label,
            style: TextStyle(
              fontSize: compact ? 10 : 12,
              color: color ?? Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Color _getSeedersColor(BuildContext context, int seeders) {
    if (seeders > 20) {
      return Colors.green;
    } else if (seeders > 5) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}
