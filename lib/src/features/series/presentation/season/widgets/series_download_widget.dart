import 'package:client/src/features/series/presentation/season/season_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:built_collection/built_collection.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesDownloadWidget extends ConsumerStatefulWidget {
  final SeriesResource series;
  final List<ReleaseResource> releases;
  final int seasonNumber;

  const SeriesDownloadWidget(
    this.releases,
    this.seasonNumber, {
    super.key,
    required this.series,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeriesDownloadWidgetState();
}

class _SeriesDownloadWidgetState extends ConsumerState<SeriesDownloadWidget> {
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
        return b.seeders!.compareTo(a.seeders!);
      }

      return (b.size ?? 0).compareTo(a.size ?? 0);
    });

    return AlertDialog(
      title: Text('Releases for ${widget.series.title}'),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                FilterChip(
                  label: Text('Show Rejected: ${filteredReleases.length}'),
                  selected: showRejected,
                  onSelected: (selected) {
                    setState(() {
                      showRejected = selected;
                    });
                  },
                ),
              ],
            ),

            Expanded(
              child: filteredReleases.isEmpty
                  ? const Center(child: Text('No releases match your filters'))
                  : ListView.separated(
                      shrinkWrap: true,
                      itemCount: filteredReleases.length,
                      separatorBuilder: (context, index) => const Divider(),
                      itemBuilder: (context, index) {
                        final release = filteredReleases[index];
                        final hasRejections =
                            release.rejections?.isNotEmpty ?? false;

                        String ageText = 'Unknown age';
                        if (release.publishDate != null) {
                          final now = DateTime.now();
                          final publishDate = release.publishDate!;
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
                          elevation: 1,
                          margin: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 4,
                          ),
                          color: hasRejections
                              ? Theme.of(context).colorScheme.errorContainer
                                    .withCustomOpacity(0.2)
                              : null,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        release.title ?? 'Unknown Release',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: hasRejections
                                              ? Theme.of(
                                                  context,
                                                ).colorScheme.error
                                              : null,
                                        ),
                                      ),
                                    ),

                                    if (release.infoUrl != null &&
                                        release.infoUrl!.isNotEmpty)
                                      IconButton(
                                        icon: const Icon(Icons.info_outline),
                                        tooltip: 'View release info',
                                        onPressed: () {
                                          //TODO release.infoUrl
                                        },
                                      ),
                                    IconButton(
                                      icon: const Icon(Icons.download),
                                      tooltip: 'Download this release',
                                      onPressed: () {
                                        ref
                                            .read(
                                              seasonPageControllerProvider(
                                                widget.series,
                                              ).notifier,
                                            )
                                            .downloadRelease(
                                              indexerId: release.indexerId!,
                                              guid: release.guid!,
                                            );
                                        Navigator.of(context).pop();
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text('Download started'),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 8),

                                Wrap(
                                  spacing: 16,
                                  runSpacing: 8,
                                  children: [
                                    _buildReleaseInfoChip(
                                      Icons.high_quality,
                                      'Quality: ${release.quality?.quality?.name ?? 'Unknown'}',
                                    ),
                                    _buildReleaseInfoChip(
                                      Icons.storage,
                                      _formatFileSize(release.size ?? 0),
                                    ),
                                    _buildReleaseInfoChip(
                                      Icons.source,
                                      'Source: ${release.indexer ?? 'Unknown'}',
                                    ),

                                    // Add language information
                                    _buildReleaseInfoChip(
                                      Icons.language,
                                      _formatLanguages(release.languages),
                                    ),

                                    if (release.seeders != null)
                                      _buildReleaseInfoChip(
                                        Icons.arrow_upward,
                                        'Seeders: ${release.seeders}',
                                      ),
                                    if (release.leechers != null)
                                      _buildReleaseInfoChip(
                                        Icons.arrow_downward,
                                        'Leechers: ${release.leechers}',
                                      ),
                                    _buildReleaseInfoChip(
                                      Icons.access_time,
                                      ageText,
                                    ),
                                  ],
                                ),

                                if (hasRejections) ...[
                                  const SizedBox(height: 8),
                                  const Divider(),
                                  Text(
                                    'Rejected:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.error,
                                    ),
                                  ),
                                  ...release.rejections!.map(
                                    (reason) => Padding(
                                      padding: const EdgeInsets.only(
                                        left: 8.0,
                                        top: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.error_outline,
                                            size: 16,
                                            color: Theme.of(
                                              context,
                                            ).colorScheme.error,
                                          ),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: Text(
                                              reason,
                                              style: TextStyle(
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
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget _buildReleaseInfoChip(IconData icon, String label) {
    return Chip(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      avatar: Icon(icon, size: 16),
      label: Text(label, style: const TextStyle(fontSize: 12)),
      padding: const EdgeInsets.all(4),
    );
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }

  String _formatLanguages(BuiltList<Language>? languages) {
    if (languages == null || languages.isEmpty) {
      return 'Unknown';
    }

    if (languages.length > 1) {
      return 'Multi-Language';
    }

    return languages.first.name ?? 'Unknown';
  }
}
