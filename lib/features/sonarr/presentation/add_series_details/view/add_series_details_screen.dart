import 'package:client/features/sonarr/data/add_series_details_provider/add_series_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AddSeriesDetailsScreen extends ConsumerWidget {
  final SonarrSeriesLookup series;

  const AddSeriesDetailsScreen({super.key, required this.series});

  String? _getPosterUrl() {
    if (series.images == null || series.images!.isEmpty) {
      return null;
    }
    try {
      return series.images!
          .firstWhere((image) => image.coverType == 'poster')
          .remoteUrl;
    } catch (e) {
      return null;
    }
  }

  Widget _buildInfoChip(
    ThemeData theme,
    String text, {
    Color? backgroundColor,
    Color? textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? theme.colorScheme.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: theme.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: textColor ?? theme.colorScheme.onSurface,
        ),
      ),
    );
  }

  Widget _buildFormField({
    required BuildContext context,
    required String title,
    required Widget child,
    String? subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
              fontSize: 14,
            ),
          ),
        ],
        const SizedBox(height: 8),
        child,
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildResponsiveLayout(
    BuildContext context,
    Widget headerCard,
    List<Widget> configCards,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 900) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: headerCard),
          const SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                configCards[0],
                const SizedBox(height: 12),
                configCards[1],
                const SizedBox(height: 12),
                configCards[2],
              ],
            ),
          ),
        ],
      );
    }

    if (screenWidth > 600) {
      return Column(
        children: [
          headerCard,
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < configCards.length - 1; i++) ...[
                if (i > 0) const SizedBox(width: 16),
                Expanded(child: configCards[i]),
              ],
            ],
          ),
          const SizedBox(height: 12),
          configCards[configCards.length - 1],
        ],
      );
    }

    return Column(
      children: [
        headerCard,
        const SizedBox(height: 12),
        configCards[0],
        const SizedBox(height: 12),
        configCards[1],
        const SizedBox(height: 12),
        configCards[2],
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = addSeriesDetailsNotifierProvider(series);
    final state = ref.watch(provider);
    final notifier = ref.read(provider.notifier);
    final theme = Theme.of(context);
    final posterUrl = _getPosterUrl();

    final headerCard = Card(
      elevation: 6,
      shadowColor: Colors.black.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              if (posterUrl != null)
                ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                      stops: const [0.5, 1.0],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.srcOver,
                  child: CachedNetworkImage(
                    imageUrl: series.images!
                            .firstWhere(
                              (image) => image.coverType == 'banner',
                              orElse: () => SonarrSeriesImage(remoteUrl: null),
                            )
                            .remoteUrl ??
                        'https://via.placeholder.com/500x100?text=No+Banner+Available',
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[800],
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[800],
                      child: const Icon(Icons.error, color: Colors.white),
                    ),
                  ),
                )
              else
                Container(
                  height: 220,
                  width: double.infinity,
                  color: theme.colorScheme.primary.withOpacity(0.2),
                  child: Icon(
                    Icons.image_not_supported,
                    size: 80,
                    color: theme.colorScheme.primary,
                  ),
                ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (posterUrl != null)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            imageUrl: posterUrl,
                            width: 90,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        )
                      else
                        Container(
                          width: 90,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Center(
                            child: Icon(Icons.image_not_supported, size: 40),
                          ),
                        ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              series.title ?? 'Unknown Title',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 2,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            _buildInfoChip(
                              theme,
                              'Year: ${series.year ?? 'Unknown'}',
                            ),
                            const SizedBox(height: 4),
                            _buildInfoChip(
                              theme,
                              'Network: ${series.network ?? 'Unknown'}',
                            ),
                            const SizedBox(height: 4),
                            _buildInfoChip(
                              theme,
                              'Status: ${series.status ?? 'Unknown'}',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  series.overview ?? 'No description available',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final configCards = [
      Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Series Configuration',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              _buildFormField(
                context: context,
                title: 'Quality Profile',
                child: DropdownButtonFormField<int>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: theme.colorScheme.surface,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  isExpanded: true,
                  value: state.selectedQualityProfileId,
                  items: state.qualityProfiles.map((profile) {
                    return DropdownMenuItem<int>(
                      value: profile.id,
                      child: Text(profile.name ?? 'Unknown'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) {
                      notifier.setSelectedQualityProfileId(value);
                    }
                  },
                ),
              ),
              _buildFormField(
                context: context,
                title: 'Root Folder',
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: theme.colorScheme.surface,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  isExpanded: true,
                  value: state.rootFolderPath,
                  items: state.rootFolders.map((folder) {
                    return DropdownMenuItem<String>(
                      value: folder.path,
                      child: Text(folder.path ?? 'Unknown'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    notifier.setRootFolderPath(value);
                  },
                ),
              ),
              _buildFormField(
                context: context,
                title: 'Monitor',
                child: DropdownButtonFormField<SonarrMonitorType>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: theme.colorScheme.surface,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  isExpanded: true,
                  value: state.selectedMonitorType,
                  items: const [
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.UNKNOWN,
                      child: Text('Unknown'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.ALL,
                      child: Text('All Episodes'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.FUTURE,
                      child: Text('Future Episodes'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.MISSING,
                      child: Text('Missing Episodes'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.EXISTING,
                      child: Text('Existing Episodes'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.FIRST_SEASON,
                      child: Text('First Season'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.LAST_SEASON,
                      child: Text('Last Season'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.LATEST_SEASON,
                      child: Text('Latest Season'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.PILOT,
                      child: Text('Pilot Episode Only'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.RECENT,
                      child: Text('Recent Episodes'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.MONITOR_SPECIALS,
                      child: Text('Monitor Specials'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.UNMONITOR_SPECIALS,
                      child: Text('Unmonitor Specials'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.NONE,
                      child: Text('None'),
                    ),
                    DropdownMenuItem<SonarrMonitorType>(
                      value: SonarrMonitorType.SKIP,
                      child: Text('Skip'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      notifier.setSelectedMonitorType(value);
                    }
                  },
                ),
              ),
              _buildFormField(
                context: context,
                title: 'Series Type',
                child: DropdownButtonFormField<SonarrSeriesType>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: theme.colorScheme.surface,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  isExpanded: true,
                  value: state.selectedSeriesType,
                  items: const [
                    DropdownMenuItem<SonarrSeriesType>(
                      value: SonarrSeriesType.STANDARD,
                      child: Text('Standard'),
                    ),
                    DropdownMenuItem<SonarrSeriesType>(
                      value: SonarrSeriesType.DAILY,
                      child: Text('Daily'),
                    ),
                    DropdownMenuItem<SonarrSeriesType>(
                      value: SonarrSeriesType.ANIME,
                      child: Text('Anime'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) {
                      notifier.setSelectedSeriesType(value);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Additional Options',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Use Season Folder',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Organize episodes into season folders',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: state.seasonFolder,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        notifier.setSeasonFolder(value);
                      },
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Monitored', style: TextStyle(fontSize: 16.0)),
                          SizedBox(height: 4),
                          Text(
                            'Monitor this series for new episodes',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: state.monitored,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        notifier.setMonitored(value);
                      },
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search for Missing Episodes',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Search for all missing episodes when adding the series',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: state.searchForMissingEpisodes,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        notifier.setSearchForMissingEpisodes(value);
                      },
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search Cutoff Unmet Episodes',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Search for episodes that don\'t meet cutoff quality requirements',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: state.searchForCutoffUnmetEpisodes,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        notifier.setSearchForCutoffUnmetEpisodes(value);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.primary,
              theme.colorScheme.primary.withBlue(
                (theme.colorScheme.primary.blue + 40).clamp(0, 255),
              ),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.primary.withOpacity(0.4),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () async {
            final success = await notifier.addSeries();
            if (success) {
              Navigator.of(context).pop(true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${series.title} added successfully'),
                  backgroundColor: Colors.green,
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Failed to add series: ${state.error}'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, size: 20),
              const SizedBox(width: 8),
              Text(
                'ADD SERIES',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onPrimary,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: Text(
          series.title ?? 'Add Series',
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          if (!state.isLoading)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Icon(Icons.check, color: theme.colorScheme.primary),
                onPressed: () async {
                  final success = await notifier.addSeries();
                  if (success) {
                    Navigator.of(context).pop(true);
                  }
                },
                tooltip: 'Add Series',
              ),
            ),
        ],
      ),
      body: state.isLoading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text(
                    'Loading series details...',
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            )
          : state.error != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 60,
                        color: theme.colorScheme.error,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Error',
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: theme.colorScheme.error,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.error ?? 'Unknown error',
                        style: theme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.refresh),
                        label: const Text('Try Again'),
                        onPressed: () => ref.refresh(provider),
                      ),
                    ],
                  ),
                )
              : SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: _buildResponsiveLayout(context, headerCard, configCards),
                ),
    );
  }
}
