import 'package:client/core/api/api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final posterUrl = _getPosterUrl();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Series'),
        actions: [
          if (!_isLoading)
            IconButton(
              icon: const Icon(Icons.check),
              onPressed: _addSeries,
              tooltip: 'Add Series',
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text('Error: $_error'))
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Series info with poster
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Poster
                      SizedBox(
                        width: 120,
                        height: 180,
                        child: posterUrl != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: CachedNetworkImage(
                                  imageUrl: posterUrl,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.image_not_supported,
                                    size: 50,
                                  ),
                                ),
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
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Year: ${widget.series.year ?? 'Unknown'}',
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Network: ${widget.series.network ?? 'Unknown'}',
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Status: ${widget.series.status ?? 'Unknown'}',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    widget.series.overview ?? 'No description available',
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  // Quality Profile
                  const Text(
                    'Quality Profile',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<int>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
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

                  const SizedBox(height: 16),

                  // Root Folder
                  const Text(
                    'Root Folder',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
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

                  const SizedBox(height: 16),

                  // Monitor Type
                  const Text(
                    'Monitor',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<SonarrMonitorType>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
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

                  const SizedBox(height: 16),

                  // Series Type
                  const Text(
                    'Series Type',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<SonarrSeriesType>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
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

                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 16),

                  // Additional Options
                  const Text(
                    'Additional Options',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 16),

                  // Season Folder
                  SwitchListTile(
                    title: const Text('Use Season Folder'),
                    subtitle: const Text(
                      'Organize episodes into season folders',
                    ),
                    value: _seasonFolder,
                    onChanged: (value) {
                      setState(() {
                        _seasonFolder = value;
                      });
                    },
                  ),

                  // Monitored
                  SwitchListTile(
                    title: const Text('Monitored'),
                    subtitle: const Text(
                      'Monitor this series for new episodes',
                    ),
                    value: _monitored,
                    onChanged: (value) {
                      setState(() {
                        _monitored = value;
                      });
                    },
                  ),

                  // Search Missing Episodes
                  SwitchListTile(
                    title: const Text('Search for Missing Episodes'),
                    subtitle: const Text(
                      'Search for all missing episodes when adding the series',
                    ),
                    value: _searchForMissingEpisodes,
                    onChanged: (value) {
                      setState(() {
                        _searchForMissingEpisodes = value;
                      });
                    },
                  ),

                  // Search Cutoff Unmet Episodes
                  SwitchListTile(
                    title: const Text('Search Cutoff Unmet Episodes'),
                    subtitle: const Text(
                      'Search for episodes that don\'t meet cutoff quality requirements',
                    ),
                    value: _searchForCutoffUnmetEpisodes,
                    onChanged: (value) {
                      setState(() {
                        _searchForCutoffUnmetEpisodes = value;
                      });
                    },
                  ),

                  const SizedBox(height: 32),

                  // Add button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: _addSeries,
                      child: const Text(
                        'ADD SERIES',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
