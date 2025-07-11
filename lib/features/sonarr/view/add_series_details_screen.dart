import 'package:client/core/api/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:ui';

class AddSeriesDetailsScreen extends ConsumerStatefulWidget {
  final SonarrSeriesLookup series;

  const AddSeriesDetailsScreen({super.key, required this.series});

  @override
  ConsumerState<AddSeriesDetailsScreen> createState() =>
      _AddSeriesDetailsScreenState();
}

class _AddSeriesDetailsScreenState
    extends ConsumerState<AddSeriesDetailsScreen> {
  bool _isLoading = false;
  String? _error;

  // Quality profiles
  List<SonarrQualityProfile> _qualityProfiles = [];
  int _selectedQualityProfileId = 1;

  // Root folder
  String? _rootFolderPath;
  List<SonarrRootFolder> _rootFolders = [];

  // Series options
  SonarrMonitorType _selectedMonitorType = SonarrMonitorType.FUTURE;
  SonarrSeriesType _selectedSeriesType = SonarrSeriesType.STANDARD;
  bool _seasonFolder = true;
  bool _monitored = true;
  bool _searchForMissingEpisodes = false;
  bool _searchForCutoffUnmetEpisodes = false;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final sonarr = ref.read(sonarrProvider);

      // Fetch quality profiles
      final qualityProfiles = await sonarr.profile.getQualityProfiles();

      // Fetch root folders
      final rootFolders = await sonarr.rootFolder.getRootFolders();

      setState(() {
        _qualityProfiles = qualityProfiles;
        _rootFolders = rootFolders;

        if (qualityProfiles.isNotEmpty) {
          _selectedQualityProfileId = qualityProfiles.first.id!;
        }

        if (rootFolders.isNotEmpty) {
          _rootFolderPath = rootFolders.first.path;
        }

        // Set the series type from lookup
        _selectedSeriesType =
            widget.series.seriesType ?? SonarrSeriesType.STANDARD;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _addSeries() async {
    if (_rootFolderPath == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Root folder path is required')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final sonarr = ref.read(sonarrProvider);

      await sonarr.series.addSeries(
        tvdbId: widget.series.tvdbId!,
        monitorMode: _selectedMonitorType,
        qualityProfileId: _selectedQualityProfileId,
        title: widget.series.title!,
        images: widget.series.images!,
        seasons: widget.series.seasons!,
        seriesType: _selectedSeriesType,
        rootFolderPath: _rootFolderPath!,
        seasonFolder: _seasonFolder,
        monitored: _monitored,
        searchForMissingEpisodes: _searchForMissingEpisodes,
        searchForCutoffUnmetEpisodes: _searchForCutoffUnmetEpisodes,
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${widget.series.title} added successfully')),
        );
        Navigator.of(context).pop(true); // Return true to indicate success
      }
    } catch (e) {
      setState(() {
        _error = e.toString();
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to add series: $_error')));
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  String? _getPosterUrl() {
    if (widget.series.images == null || widget.series.images!.isEmpty) {
      return null;
    }
    try {
      return widget.series.images!
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

  // Calculate layout based on screen size
  Widget _buildResponsiveLayout(
    BuildContext context,
    Widget headerCard,
    List<Widget> configCards,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;

    // For larger screens, show cards side by side
    if (screenWidth > 900) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: headerCard),
          const SizedBox(width: 16),
          Expanded(flex: 3, child: Column(children: configCards)),
        ],
      );
    }

    // For medium screens, stack everything vertically as well
    // This avoids content being cramped in the medium-sized screens
    if (screenWidth > 600) {
      return Column(
        children: [
          headerCard,
          const SizedBox(height: 16),
          // Just display the config cards vertically
          ...configCards,
        ],
      );
    }

    // For small screens, stack everything vertically
    return Column(
      children: [headerCard, const SizedBox(height: 16), ...configCards],
    );
  }

  @override
  Widget build(BuildContext context) {
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
              // Background image
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
                    imageUrl:
                        widget.series.images!
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

              // Content overlay
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Poster thumbnail
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
                      // Series info
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.series.title ?? 'Unknown Title',
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
                              'Year: ${widget.series.year ?? 'Unknown'}',
                            ),
                            const SizedBox(height: 4),
                            _buildInfoChip(
                              theme,
                              'Network: ${widget.series.network ?? 'Unknown'}',
                            ),
                            const SizedBox(height: 4),
                            _buildInfoChip(
                              theme,
                              'Status: ${widget.series.status ?? 'Unknown'}',
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

          // Description
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
                  widget.series.overview ?? 'No description available',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final configCards = [
      // Configuration Card
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

              // Quality Profile
              _buildFormField(
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
                  value: _selectedQualityProfileId,
                  items: _qualityProfiles.map((profile) {
                    return DropdownMenuItem<int>(
                      value: profile.id,
                      child: Text(profile.name ?? 'Unknown'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedQualityProfileId = value!;
                    });
                  },
                ),
              ),

              // Root Folder
              _buildFormField(
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
                  value: _rootFolderPath,
                  items: _rootFolders.map((folder) {
                    return DropdownMenuItem<String>(
                      value: folder.path,
                      child: Text(folder.path ?? 'Unknown'),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _rootFolderPath = value;
                    });
                  },
                ),
              ),

              // Monitor Type
              _buildFormField(
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
                  value: _selectedMonitorType,
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
                    setState(() {
                      _selectedMonitorType = value!;
                    });
                  },
                ),
              ),

              // Series Type
              _buildFormField(
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
                  value: _selectedSeriesType,
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
                    setState(() {
                      _selectedSeriesType = value!;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      const SizedBox(height: 24),

      // Additional Options Card
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

              // Season Folder
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                      value: _seasonFolder,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        setState(() {
                          _seasonFolder = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),

              // Monitored
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                      value: _monitored,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        setState(() {
                          _monitored = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),

              // Search Missing Episodes
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                      value: _searchForMissingEpisodes,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        setState(() {
                          _searchForMissingEpisodes = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),

              // Search Cutoff Unmet Episodes
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                      value: _searchForCutoffUnmetEpisodes,
                      activeColor: theme.colorScheme.primary,
                      onChanged: (value) {
                        setState(() {
                          _searchForCutoffUnmetEpisodes = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      const SizedBox(height: 32),

      // Add button
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
          onPressed: _addSeries,
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
      const SizedBox(height: 24),
    ];

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: Text(
          widget.series.title ?? 'Add Series',
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          if (!_isLoading)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Icon(Icons.check, color: theme.colorScheme.primary),
                onPressed: _addSeries,
                tooltip: 'Add Series',
              ),
            ),
        ],
      ),
      body: _isLoading
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
          : _error != null
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
                    _error ?? 'Unknown error',
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.refresh),
                    label: const Text('Try Again'),
                    onPressed: _fetchData,
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
