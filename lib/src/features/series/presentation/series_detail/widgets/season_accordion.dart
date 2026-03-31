import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';
import 'episode_row.dart';

class SeasonAccordion extends ConsumerStatefulWidget {
  final int seriesId;
  final int seasonNumber;
  final String episodeCount;
  final String status;
  final bool initiallyExpanded;

  const SeasonAccordion({
    super.key,
    required this.seriesId,
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
  late bool _expanded;
  late final AnimationController _ctrl;
  late final Animation<double> _iconTurns;
  late final Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _expanded = widget.initiallyExpanded;
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      value: _expanded ? 1.0 : 0.0,
    );
    _iconTurns = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));

    _fadeAnim = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _ctrl,
        curve: const Interval(0.4, 1.0, curve: Curves.easeIn),
      ),
    );
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

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    final asyncEpisodes = ref.watch(seriesEpisodesProvider(widget.seriesId));
    final isLoading = asyncEpisodes.isLoading;

    List<EpisodeResource> seasonEpisodes = [];
    if (asyncEpisodes.hasValue) {
      seasonEpisodes =
          asyncEpisodes.value!
              .where((e) => e.seasonNumber == widget.seasonNumber)
              .toList()
            ..sort(
              (a, b) => (a.episodeNumber ?? 0).compareTo(b.episodeNumber ?? 0),
            );
    }

    final disableExpand = isLoading || seasonEpisodes.isEmpty;

    String displayCount = widget.episodeCount;
    String displayStatus = widget.status;

    if (asyncEpisodes.hasValue && seasonEpisodes.isNotEmpty) {
      final sCount = seasonEpisodes.length;
      final sFiles = seasonEpisodes.where((e) => e.hasFile == true).length;
      displayCount = '$sFiles/$sCount';

      if (sFiles == sCount && sCount > 0) {
        displayStatus = 'COMPLETE';
      } else if (displayStatus != 'UNMONITORED') {
        displayStatus = 'UNFINISHED';
      }
    } else if (isLoading && widget.episodeCount == '0/0') {
      displayCount = '...';
    }

    if (_expanded && disableExpand) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _expanded) _toggle();
      });
    }

    final episodeList = Column(
      children: seasonEpisodes.map((e) {
        final num = e.episodeNumber?.toString().padLeft(2, '0') ?? '00';
        final title = e.title ?? 'Unknown';

        String codec = '';
        Color statusColor = cs.outline;
        IconData icon = Icons.info_outline;

        if (e.hasFile == true) {
          final sizeMb = ((e.episodeFile?.size ?? 0) / 1048576).toStringAsFixed(
            1,
          );
          final q = e.episodeFile?.quality?.quality?.name ?? 'Unknown';
          codec = '$q • $sizeMb MB';
          statusColor = Colors.green;
          icon = Icons.check_circle_outline;
        } else {
          if (e.monitored == false) {
            codec = 'UNMONITORED';
            statusColor = cs.outlineVariant;
            icon = Icons.block;
          } else {
            codec = 'MISSING';
            statusColor = cs.error;
            icon = Icons.warning_amber_rounded;
          }
        }

        return EpisodeRow(
          number: num,
          title: title,
          codec: codec,
          statusColor: statusColor,
          icon: icon,
        );
      }).toList(),
    );

    return Container(
      color: cs.surfaceContainerLow,
      child: Stack(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: disableExpand ? null : _toggle,
                behavior: HitTestBehavior.opaque,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: cs.surfaceContainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RotationTransition(
                            turns: _iconTurns,
                            child: Icon(
                              Icons.expand_more,
                              size: 20,
                              color: _expanded ? cs.primary : cs.outline,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Season ${widget.seasonNumber}',
                            style: tt.titleMedium!.copyWith(
                              color: _expanded ? cs.onSurface : cs.outline,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '($displayCount)',

                            style: tt.labelSmall!.copyWith(color: cs.outline),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: cs.surfaceContainerHighest,
                          border: _expanded
                              ? null
                              : Border.all(
                                  color: cs.outline.withValues(alpha: 0.3),
                                ),
                        ),
                        child: Text(
                          isLoading ? 'FETCHING...' : displayStatus,
                          style: tt.labelSmall!.copyWith(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: _expanded || isLoading
                                ? cs.outline
                                : cs.outline.withValues(alpha: 0.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              AnimatedSize(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                alignment: Alignment.topCenter,
                child: _expanded
                    ? FadeTransition(opacity: _fadeAnim, child: episodeList)
                    : const SizedBox.shrink(),
              ),
            ],
          ),
          if (isLoading)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LinearProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(cs.primary),
                minHeight: 2,
              ),
            ),
        ],
      ),
    );
  }
}
