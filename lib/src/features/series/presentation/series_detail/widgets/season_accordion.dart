import 'package:client/src/features/series/presentation/series_detail/series_details_controller.dart';
import 'package:client/src/shared/widgets/indicators/animated_progress_bar.dart';
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
  late final AnimationController _ctrl;
  late final Animation<double> _curvedAnim;
  late final Animation<double> _iconTurns;
  bool _expanded = false;

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

    final asyncEpisodes = ref.watch(seriesEpisodesProvider(widget.seriesId));
    final isLoading = asyncEpisodes.isLoading;

    final seasonEpisodes =
        (asyncEpisodes.valueOrNull
            ?.where((e) => e.seasonNumber == widget.seasonNumber)
            .toList()
          ?..sort(
            (a, b) => (a.episodeNumber ?? 0).compareTo(b.episodeNumber ?? 0),
          )) ??
        [];

    final disableExpand = isLoading || seasonEpisodes.isEmpty;

    if (disableExpand && _expanded) _collapse();

    final display = _resolveDisplay(
      episodes: seasonEpisodes,
      isLoading: isLoading,
    );

    return Container(
      color: cs.surfaceContainerLow,
      child: Stack(
        children: [
          Column(
            children: [
              _AccordionHeader(
                seasonNumber: widget.seasonNumber,
                count: display.count,
                status: display.status,
                expanded: _expanded,
                disableExpand: disableExpand,
                isLoading: isLoading,
                iconTurns: _iconTurns,
                onTap: _toggle,
              ),
              SizeTransition(
                sizeFactor: _curvedAnim,
                axisAlignment: -1.0,
                child: FadeTransition(
                  opacity: _curvedAnim,
                  child: _EpisodeList(episodes: seasonEpisodes),
                ),
              ),
            ],
          ),
          if (isLoading)
            Positioned(top: 0, left: 0, right: 0, child: AnimatedProgressBar()),
        ],
      ),
    );
  }
}

class _AccordionHeader extends StatelessWidget {
  final int seasonNumber;
  final String count;
  final String status;
  final bool expanded;
  final bool disableExpand;
  final bool isLoading;
  final Animation<double> iconTurns;
  final VoidCallback onTap;

  const _AccordionHeader({
    required this.seasonNumber,
    required this.count,
    required this.status,
    required this.expanded,
    required this.disableExpand,
    required this.isLoading,
    required this.iconTurns,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: disableExpand ? null : onTap,
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
                  turns: iconTurns,
                  child: Icon(
                    Icons.expand_more,
                    size: 20,
                    color: expanded ? cs.primary : cs.outline,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'Season $seasonNumber',
                  style: tt.titleMedium!.copyWith(
                    color: expanded ? cs.onSurface : cs.outline,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '($count)',
                  style: tt.labelSmall!.copyWith(color: cs.outline),
                ),
              ],
            ),
            _StatusBadge(
              status: status,
              expanded: expanded,
              isLoading: isLoading,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;
  final bool expanded;
  final bool isLoading;

  const _StatusBadge({
    required this.status,
    required this.expanded,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest,
        border: expanded
            ? null
            : Border.all(color: cs.outline.withValues(alpha: 0.3)),
      ),
      child: Text(
        isLoading ? 'FETCHING...' : status,
        style: tt.labelSmall!.copyWith(
          fontSize: 9,
          fontWeight: FontWeight.bold,
          color: expanded || isLoading
              ? cs.outline
              : cs.outline.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}

class _EpisodeList extends StatelessWidget {
  final List<EpisodeResource> episodes;

  const _EpisodeList({required this.episodes});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Column(
      children: episodes.map((e) {
        final num = e.episodeNumber?.toString().padLeft(2, '0') ?? '00';
        final title = e.title ?? 'Unknown';

        final (String codec, Color statusColor, IconData icon) = switch (true) {
          _ when e.hasFile == true => (
            '${e.episodeFile?.quality?.quality?.name ?? 'Unknown'} • ${((e.episodeFile?.size ?? 0) / 1048576).toStringAsFixed(1)} MB',
            Colors.green as Color,
            Icons.check_circle_outline,
          ),
          _ when e.monitored == false => (
            'UNMONITORED',
            cs.outlineVariant,
            Icons.block,
          ),
          _ => ('MISSING', cs.error, Icons.warning_amber_rounded),
        };

        return EpisodeRow(
          number: num,
          title: title,
          codec: codec,
          statusColor: statusColor,
          icon: icon,
        );
      }).toList(),
    );
  }
}
