import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeasonActionsMenu extends StatelessWidget {
  final SonarrSeries series;
  final int seasonNumber;
  final Function(bool) onToggleMonitoring;
  final VoidCallback onSearch;
  final VoidCallback onShowReleases;

  const SeasonActionsMenu({
    super.key,
    required this.series,
    required this.seasonNumber,
    required this.onToggleMonitoring,
    required this.onSearch,
    required this.onShowReleases,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_horiz, color: theme.colorScheme.primary),
      tooltip: 'Season Actions',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      position: PopupMenuPosition.under,
      onSelected: (String action) {
        switch (action) {
          case 'monitor':
            onToggleMonitoring(true);
            break;
          case 'unmonitor':
            onToggleMonitoring(false);
            break;
          case 'search':
            onSearch();
            break;
          case 'releases':
            onShowReleases();
            break;
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'monitor',
          child: Row(
            children: [
              Icon(
                Icons.visibility,
                color: theme.colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 12),
              const Text('Monitor Season'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'unmonitor',
          child: Row(
            children: [
              Icon(Icons.visibility_off, color: Colors.grey.shade600, size: 20),
              const SizedBox(width: 12),
              const Text('Unmonitor Season'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'search',
          child: Row(
            children: [
              Icon(Icons.search, color: theme.colorScheme.secondary, size: 20),
              const SizedBox(width: 12),
              const Text('Search'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'releases',
          child: Row(
            children: [
              Icon(Icons.list_alt, color: theme.colorScheme.tertiary, size: 20),
              const SizedBox(width: 12),
              const Text('Show Releases'),
            ],
          ),
        ),
      ],
    );
  }
}
