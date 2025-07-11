import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

import 'package:client/features/sonarr/application/provider/commands_provider/commands_provider.dart';

class ReleaseSelectionDialog extends ConsumerWidget {
  final List<SonarrRelease> releases;
  final String title;

  const ReleaseSelectionDialog({required this.releases, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final commandsProvider = ref.read(sonarrCommandsProvider);

    return AlertDialog(
      title: Text(title),
      content: SizedBox(
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * 0.6,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Select a release to download:',
                style: theme.textTheme.bodyLarge,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: releases.length,
                itemBuilder: (context, index) {
                  final release = releases[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: theme.colorScheme.outline.withOpacity(0.2),
                        width: 0.5,
                      ),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      title: Text(
                        release.title ?? 'Unknown',
                        style: theme.textTheme.titleMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              _buildInfoChip(
                                theme,
                                '${release.quality?.quality?.name ?? 'Unknown'}',
                                theme.colorScheme.primary,
                              ),
                              const SizedBox(width: 8),
                              _buildInfoChip(
                                theme,
                                '${release.size != null ? _formatSize(release.size!) : 'Unknown'}',
                                theme.colorScheme.secondary,
                              ),
                              if (release.seeders != null)
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: _buildInfoChip(
                                    theme,
                                    '${release.seeders} seeders',
                                    Colors.green.shade700,
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.source,
                                size: 14,
                                color: theme.colorScheme.outline,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Indexer: ${release.indexer ?? 'Unknown'}',
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                release.protocol?.toLowerCase() == 'torrent'
                                    ? Icons.settings_ethernet
                                    : Icons.cloud_download,
                                size: 14,
                                color: theme.colorScheme.outline,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Protocol: ${release.protocol ?? 'Unknown'}',
                                style: theme.textTheme.bodySmall,
                              ),
                              if (release.ageHours != null)
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        size: 14,
                                        color: theme.colorScheme.outline,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        '${_formatAge(release.ageHours!)}',
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.download),
                        tooltip: 'Download this release',
                        style: IconButton.styleFrom(
                          backgroundColor: theme.colorScheme.primaryContainer,
                          foregroundColor: theme.colorScheme.onPrimaryContainer,
                        ),
                        onPressed: () async {
                          // Close the dialog
                          Navigator.of(context).pop();

                          final scaffoldMessenger = ScaffoldMessenger.of(
                            context,
                          );

                          try {
                            await commandsProvider.downloadRelease(
                              guid: release.guid!,
                              indexerId: release.indexerId!,
                            );

                            scaffoldMessenger.showSnackBar(
                              const SnackBar(
                                content: Text('Release downloading'),
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.green,
                              ),
                            );
                          } catch (e) {
                            scaffoldMessenger.showSnackBar(
                              SnackBar(
                                content: Text('Error downloading release: $e'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                      ),
                      isThreeLine: true,
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
          child: const Text('CANCEL'),
        ),
      ],
    );
  }

  Widget _buildInfoChip(ThemeData theme, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withAlpha(38),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  String _formatSize(int bytes) {
    const suffixes = ["B", "KB", "MB", "GB", "TB"];
    var i = 0;
    double size = bytes.toDouble();

    while (size > 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }

    return '${size.toStringAsFixed(2)} ${suffixes[i]}';
  }

  String _formatAge(double hours) {
    if (hours < 1) {
      final minutes = (hours * 60).round();
      return '$minutes min${minutes == 1 ? '' : 's'} old';
    } else if (hours < 24) {
      final hrs = hours.round();
      return '$hrs hour${hrs == 1 ? '' : 's'} old';
    } else {
      final days = (hours / 24).round();
      return '$days day${days == 1 ? '' : 's'} old';
    }
  }
}
