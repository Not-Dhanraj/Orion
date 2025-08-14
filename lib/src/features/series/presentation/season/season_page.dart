import 'package:client/src/features/series/presentation/season/season_page_controller.dart';
import 'package:client/src/shared/page/custom_error_page.dart';
import 'package:client/src/shared/widgets/media_release_widget.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeasonPage extends ConsumerStatefulWidget {
  final SeriesResource series;

  const SeasonPage({super.key, required this.series});

  @override
  ConsumerState<SeasonPage> createState() => _SeasonPageState();
}

class _SeasonPageState extends ConsumerState<SeasonPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    // Create a placeholder tab controller that will be replaced when data loads
    _tabController = TabController(length: 1, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final seasonPageState = ref.watch(
      seasonPageControllerProvider(widget.series),
    );

    return seasonPageState.when(
      loading: () => _buildLoadingScaffold(),
      error: (error, stackTrace) =>
          CustomErrorPage(errorMessage: error.toString()),
      data: (state) {
        // Setup tab controller when data is available
        if (state.seasons.isEmpty) {
          return CustomErrorPage(
            errorMessage: 'No seasons found for this series.',
          );
        }

        // Initialize tab controller if needed
        if (_tabController.length != state.seasons.length) {
          _tabController = TabController(
            length: state.seasons.length,
            vsync: this,
            initialIndex: state.selectedSeasonIndex,
          );

          _tabController.addListener(() {
            if (!_tabController.indexIsChanging) {
              ref
                  .read(seasonPageControllerProvider(widget.series).notifier)
                  .setSelectedSeasonIndex(_tabController.index);
            }
          });
        } else if (_tabController.index != state.selectedSeasonIndex) {
          _tabController.animateTo(state.selectedSeasonIndex);
        }

        // Get the currently selected season
        final selectedSeason = state.selectedSeason;
        if (selectedSeason == null) {
          return CustomErrorPage(
            errorMessage: 'No season found for this series.',
          );
        }

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text('Seasons - ${state.seriesResource.title}'),
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: state.seasons.map((season) {
                final seasonNumber = season.seasonNumber;
                final isMonitored = season.seasonResource.monitored ?? false;
                final episodeCount =
                    season.seasonResource.statistics?.episodeCount ?? 0;
                final episodeFileCount =
                    season.seasonResource.statistics?.episodeFileCount ?? 0;

                return Tab(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            seasonNumber == 0
                                ? 'Specials'
                                : 'Season $seasonNumber',
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            isMonitored
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 16,
                            color: isMonitored
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurface.withCustomOpacity(
                                    0.5,
                                  ),
                          ),
                        ],
                      ),
                      if (episodeCount > 0)
                        Text(
                          '$episodeFileCount/$episodeCount',
                          style: theme.textTheme.bodySmall,
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  selectedSeason.seasonResource.monitored ?? false
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: selectedSeason.seasonResource.monitored ?? false
                      ? theme.colorScheme.primary
                      : theme.colorScheme.onSurface.withCustomOpacity(0.5),
                ),
                tooltip: selectedSeason.seasonResource.monitored ?? false
                    ? 'Monitored'
                    : 'Not Monitored',
                onPressed: () {
                  ref
                      .read(
                        seasonPageControllerProvider(widget.series).notifier,
                      )
                      .toggleSeasonMonitoring(
                        selectedSeason.seasonNumber,
                        !(selectedSeason.seasonResource.monitored ?? false),
                      );
                },
              ),
              IconButton(
                icon: const Icon(Icons.refresh),
                tooltip: 'Refresh',
                onPressed: () {
                  // Invalidate the provider to force a rebuild
                  ref.invalidate(
                    seasonPageControllerProvider(state.seriesResource),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  bool hasFile = true;
                  for (var episode in selectedSeason.episodes) {
                    if (!(episode.hasFile ?? false)) {
                      hasFile = false;
                      break;
                    }
                  }
                  return IconButton(
                    icon: !hasFile
                        ? const Icon(Icons.search)
                        : const Icon(Icons.folder),
                    tooltip: 'Search for releases',
                    onPressed: () async {
                      if (!hasFile) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) {
                            return AlertDialog(
                              content: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(child: CircularProgressIndicator()),
                                  const SizedBox(height: 12),
                                  const Text(
                                    'Searching for releases may take some time.',
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                        var result = await ref
                            .read(
                              seasonPageControllerProvider(
                                widget.series,
                              ).notifier,
                            )
                            .loadReleases(
                              seriesId: widget.series.id,
                              seasonNumber: selectedSeason.seasonNumber,
                            );
                        result = result
                            .where((release) => release.fullSeason == true)
                            .toList();
                        if (context.mounted) {
                          Navigator.of(context).pop(); // Close dialog
                          if (result.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('No releases found ')),
                            );
                          } else {
                            _showReleasesDialog(
                              context,
                              result,
                              selectedSeason.seasonNumber,
                              widget.series,
                            );
                          }
                        } else {
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'All episodes in season ${selectedSeason.seasonNumber} already have files.',
                                ),
                              ),
                            );
                          }
                        }
                      }
                    },
                  );
                },
              ),
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              // Invalidate the provider to force a rebuild
              ref.invalidate(
                seasonPageControllerProvider(state.seriesResource),
              );
              // Wait a bit to let the UI refresh
              await Future.delayed(const Duration(milliseconds: 100));
            },
            child: Builder(
              builder: (_) {
                final episodes = selectedSeason.episodes;
                final seasonNumber = selectedSeason.seasonNumber;
                final theme = Theme.of(context);

                if (episodes.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.video_library, size: 48),
                        const SizedBox(height: 16),
                        Text(
                          'No episodes found',
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: episodes.length,
                  itemBuilder: (context, index) {
                    final episode = episodes[index];
                    final hasFile = episode.hasFile ?? false;

                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      elevation: 3,
                      shadowColor: theme.colorScheme.shadow.withCustomOpacity(
                        0.2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () => _showEpisodeDetails(context, episode),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'E${episode.episodeNumber}: ${episode.title ?? 'Unknown'}',
                                      style: theme.textTheme.titleMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Builder(
                                    builder: (_) {
                                      final hasFile = episode.hasFile ?? false;
                                      final monitored =
                                          episode.monitored ?? false;
                                      final theme = Theme.of(context);

                                      if (hasFile) {
                                        return Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: const Text(
                                            'Downloaded',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        );
                                      } else if (!monitored) {
                                        return Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: const Text(
                                            'Not Monitored',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 4,
                                          ),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.primary,
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: const Text(
                                            'Missing',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              if (episode.airDate != null) ...[
                                const SizedBox(height: 8),
                                Text(
                                  'Air Date: ${episode.airDate}',
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                              if (episode.overview != null &&
                                  episode.overview!.isNotEmpty) ...[
                                const SizedBox(height: 8),
                                Text(
                                  episode.overview!,
                                  style: theme.textTheme.bodyMedium,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // Monitor/Unmonitor Button
                                  IconButton(
                                    icon: Icon(
                                      episode.monitored == true
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: episode.monitored == true
                                          ? theme.colorScheme.primary
                                          : theme.colorScheme.onSurface
                                                .withCustomOpacity(0.5),
                                    ),
                                    onPressed: () {
                                      ref
                                          .read(
                                            seasonPageControllerProvider(
                                              widget.series,
                                            ).notifier,
                                          )
                                          .toggleEpisodesMonitoring([
                                            episode.id!,
                                          ], !(episode.monitored ?? false));
                                    },
                                  ),
                                  // Download/Search Button
                                  IconButton(
                                    icon: Icon(
                                      hasFile
                                          ? Icons.download_done
                                          : Icons.download,
                                      color: hasFile
                                          ? Colors.green
                                          : theme.colorScheme.primary,
                                    ),
                                    onPressed: () async {
                                      if (!hasFile) {
                                        showDialog(
                                          context: context,
                                          barrierDismissible: false,
                                          builder: (_) {
                                            return AlertDialog(
                                              content: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(
                                                    child:
                                                        CircularProgressIndicator(),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  const Text(
                                                    'Searching for releases may take some time.',
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                        var result = await ref
                                            .read(
                                              seasonPageControllerProvider(
                                                widget.series,
                                              ).notifier,
                                            )
                                            .loadReleases(
                                              episodeId: episode.id,
                                            );
                                        result = result
                                            .where(
                                              (release) =>
                                                  release.fullSeason == false,
                                            )
                                            .toList();
                                        if (context.mounted) {
                                          Navigator.of(
                                            context,
                                          ).pop(); // Close dialog
                                          if (result.isEmpty) {
                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'No releases found for E${episode.episodeNumber}',
                                                ),
                                              ),
                                            );
                                          } else {
                                            _showReleasesDialog(
                                              context,
                                              result,
                                              seasonNumber,
                                              widget.series,
                                            );
                                          }
                                        }
                                      }
                                    },
                                  ),
                                  // Delete File Button (if file exists)
                                  if (hasFile)
                                    IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: theme.colorScheme.error,
                                      ),
                                      onPressed: () {
                                        _confirmDeleteFile(
                                          context,
                                          episode,
                                          seasonNumber,
                                        );
                                      },
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildLoadingScaffold() {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Seasons'),
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }

  void _showEpisodeDetails(BuildContext context, EpisodeResource episode) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('E${episode.episodeNumber}: ${episode.title ?? 'Unknown'}'),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (episode.airDate != null) ...[
                const Text(
                  'Air Date:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(episode.airDate!),
                const SizedBox(height: 8),
              ],
              if (episode.overview != null && episode.overview!.isNotEmpty) ...[
                const Text(
                  'Overview:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(episode.overview!),
                const SizedBox(height: 8),
              ],
              if (episode.hasFile == true && episode.episodeFile != null) ...[
                const Text(
                  'File Info:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Quality: ${episode.episodeFile?.quality?.quality?.name ?? 'Unknown'}',
                ),
                Text(
                  'Size: ${_formatFileSize(episode.episodeFile?.size ?? 0)}',
                ),
                const SizedBox(height: 8),
              ],
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
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

  void _confirmDeleteFile(
    BuildContext context,
    EpisodeResource episode,
    int seasonNumber,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Episode File'),
        content: Text(
          'Are you sure you want to delete the file for "${episode.title}"? This cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (episode.episodeFile?.id != null) {
                ref
                    .read(seasonPageControllerProvider(widget.series).notifier)
                    .deleteEpisodeFile(episode.episodeFile!.id!);
              }
            },
            child: Text(
              'Delete',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ],
      ),
    );
  }

  void _showReleasesDialog(
    BuildContext context,
    List<ReleaseResource> releases,
    int seasonNumber,
    final SeriesResource series,
  ) {
    final seasonController = ref.read(
      seasonPageControllerProvider(series).notifier,
    );

    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: MediaReleaseWidget(
          releases: releases,
          title: '${series.title} - Season $seasonNumber',
          onDownloadRelease: (indexerId, guid) async {
            return seasonController.downloadRelease(
              indexerId: indexerId,
              guid: guid,
            );
          },
          formatLanguages: (languages) {
            if (languages == null) return 'Unknown';
            if (languages is BuiltList) {
              return languages.map((lang) => lang.name).join(', ');
            }
            return languages.toString();
          },
        ),
      ),
    );
  }
}
