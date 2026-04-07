import 'package:built_collection/built_collection.dart';
import 'package:client/src/features/series/presentation/season/season_controller.dart';
import 'package:client/src/shared/widgets/indicators/animated_loading_text.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar.dart';
import 'package:client/src/shared/widgets/misc/media_release_widget.dart';
import 'package:client/src/shared/widgets/dialogs/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

import 'season_accordion_header.dart';
import 'season_episode_list.dart';

class SeasonAccordion extends ConsumerStatefulWidget {
  final SeriesResource series;
  final int seasonNumber;
  final String episodeCount;
  final String status;
  final bool initiallyExpanded;

  const SeasonAccordion({
    super.key,
    required this.series,
    required this.seasonNumber,
    required this.episodeCount,
    required this.status,
    this.initiallyExpanded = false,
  });

  @override
  ConsumerState<SeasonAccordion> createState() => _SeasonAccordionState();
}

class _SeasonAccordionState extends ConsumerState<SeasonAccordion>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _curvedAnim;
  late final Animation<double> _iconTurns;
  bool _expanded = false;
  bool _isLocalLoading = false;

  Future<void> _runWithLoading(Future<void> Function() action) async {
    setState(() => _isLocalLoading = true);
    try {
      await action();
    } finally {
      if (mounted) setState(() => _isLocalLoading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    _expanded = widget.initiallyExpanded;

    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      value: _expanded ? 1.0 : 0.0,
    );

    _curvedAnim = CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut);
    _iconTurns = Tween<double>(begin: 0.0, end: 0.5).animate(_curvedAnim);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => _expanded = !_expanded);
    if (_expanded) {
      _ctrl.forward();
    } else {
      _ctrl.reverse();
    }
  }

  void _collapse() {
    if (_expanded) _toggle();
  }

  ({String count, String status}) _resolveDisplay({
    required List<EpisodeResource> episodes,
    required bool isLoading,
  }) {
    if (episodes.isNotEmpty) {
      final total = episodes.length;
      final withFile = episodes.where((e) => e.hasFile == true).length;
      final status = withFile == total
          ? 'COMPLETE'
          : widget.status == 'UNMONITORED'
          ? 'UNMONITORED'
          : 'UNFINISHED';
      return (count: '$withFile/$total', status: status);
    }

    if (isLoading && widget.episodeCount == '0/0') {
      return (count: '...', status: widget.status);
    }

    return (count: widget.episodeCount, status: widget.status);
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final seasonPageState = ref.watch(seasonPageController(widget.series));
    final isLoading = seasonPageState.isLoading;

    final seasonData = seasonPageState.valueOrNull?.seasons
        .where((s) => s.seasonNumber == widget.seasonNumber)
        .firstOrNull;
    final seasonEpisodes = seasonData?.episodes.toList() ?? [];
    seasonEpisodes.sort(
      (a, b) => (a.episodeNumber ?? 0).compareTo(b.episodeNumber ?? 0),
    );

    final disableExpand =
        (!seasonPageState.hasValue && isLoading) || seasonEpisodes.isEmpty;
    if (disableExpand && _expanded) _collapse();

    final display = _resolveDisplay(
      episodes: seasonEpisodes,
      isLoading: isLoading,
    );

    final bool isMonitored = seasonData?.seasonResource.monitored ?? false;
    final bool hasMissingFiles = seasonEpisodes.any(
      (e) => !(e.hasFile ?? false),
    );

    return Container(
      color: cs.surfaceContainerLow,
      child: Stack(
        children: [
          Column(
            children: [
              SeasonAccordionHeader(
                seasonNumber: widget.seasonNumber,
                count: display.count,
                status: display.status,
                expanded: _expanded,
                disableExpand: disableExpand,
                isLoading: isLoading,
                isMonitored: isMonitored,
                hasMissingFiles: hasMissingFiles,
                iconTurns: _iconTurns,
                onTap: _toggle,
                onToggleMonitor: () => _runWithLoading(() async {
                  await ref
                      .read(seasonPageController(widget.series).notifier)
                      .toggleSeasonMonitoring(
                        widget.seasonNumber,
                        !isMonitored,
                      );
                }),
                onSearchAll: () => _searchAll(context, hasMissingFiles),
              ),
              SizeTransition(
                sizeFactor: _curvedAnim,
                axisAlignment: -1.0,
                child: FadeTransition(
                  opacity: _curvedAnim,
                  child: SeasonEpisodeList(
                    episodes: seasonEpisodes,
                    series: widget.series,
                    seasonNumber: widget.seasonNumber,
                    runWithLoading: _runWithLoading,
                  ),
                ),
              ),
            ],
          ),
          if (isLoading || _isLocalLoading)
            Positioned(top: 0, left: 0, right: 0, child: AnimatedProgressBar()),
        ],
      ),
    );
  }

  Future<void> _searchAll(BuildContext context, bool hasMissingFiles) async {
    if (!hasMissingFiles) {
      CustomSnackbar.show(
        context,
        message:
            'All episodes in season ${widget.seasonNumber} already have files.',
        type: CustomSnackbarType.info,
      );
      return;
    }

    bool dialogDismissed = false;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: CustomDialog(
          title: 'SEARCHING',
          heading: 'Searching for season releases',
          bodyWidget: const Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: AnimatedLoadingText(),
          ),
          actions: const [],
        ),
      ),
    ).then((_) => dialogDismissed = true);

    final controller = ref.read(seasonPageController(widget.series).notifier);
    var result = await controller.loadReleases(
      seriesId: widget.series.id,
      seasonNumber: widget.seasonNumber,
    );

    if (dialogDismissed) return;

    result = result.where((release) => release.fullSeason == true).toList();

    if (context.mounted) {
      Navigator.of(context).pop();
      if (result.isEmpty) {
        CustomSnackbar.show(
          context,
          message: 'No season releases found.',
          type: CustomSnackbarType.warning,
        );
      } else {
        _showReleasesDialog(
          context,
          result,
          widget.seasonNumber,
          widget.series,
        );
      }
    }
  }

  void _showReleasesDialog(
    BuildContext context,
    List<ReleaseResource> releases,
    int seasonNumber,
    SeriesResource series,
  ) {
    final controller = ref.read(seasonPageController(series).notifier);

    showDialog(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: MediaReleaseWidget(
          releases: releases,
          title: '${series.title} - Season $seasonNumber',
          onDownloadRelease: (indexerId, guid) async {
            return controller.downloadRelease(indexerId: indexerId, guid: guid);
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
