import 'package:flutter/material.dart';

class SeasonAccordionHeader extends StatelessWidget {
  final int seasonNumber;
  final String count;
  final String status;
  final bool expanded;
  final bool disableExpand;
  final bool isLoading;
  final bool isMonitored;
  final bool hasMissingFiles;
  final Animation<double> iconTurns;
  final VoidCallback onTap;
  final VoidCallback onToggleMonitor;
  final VoidCallback onSearchAll;

  const SeasonAccordionHeader({
    super.key,
    required this.seasonNumber,
    required this.count,
    required this.status,
    required this.expanded,
    required this.disableExpand,
    required this.isLoading,
    required this.isMonitored,
    required this.hasMissingFiles,
    required this.iconTurns,
    required this.onTap,
    required this.onToggleMonitor,
    required this.onSearchAll,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: disableExpand ? null : onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: cs.surfaceContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  RotationTransition(
                    turns: iconTurns,
                    child: Icon(
                      Icons.expand_more,
                      size: 20,
                      color: expanded ? cs.primary : cs.outline,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      'Season $seasonNumber',
                      style: tt.titleMedium!.copyWith(
                        color: expanded ? cs.onSurface : cs.outline,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '($count)',
                    style: tt.labelSmall!.copyWith(color: cs.outline),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    isMonitored ? Icons.bookmark : Icons.bookmark_border,
                    size: 18,
                  ),
                  color: isMonitored
                      ? cs.primary
                      : cs.outline.withValues(alpha: 0.5),
                  onPressed: onToggleMonitor,
                  tooltip: isMonitored ? 'Unmonitor Season' : 'Monitor Season',
                ),
                if (status != 'UNMONITORED') ...[
                  const SizedBox(width: 8),
                  SeasonStatusBadge(
                    status: status,
                    expanded: expanded,
                    isLoading: isLoading,
                  ),
                  const SizedBox(width: 4),
                ],
                PopupMenuButton<String>(
                  icon: Icon(
                    Icons.more_vert,
                    size: 20,
                    color: expanded ? cs.onSurface : cs.outline,
                  ),
                  splashRadius: 24,
                  elevation: 4,
                  shadowColor: Colors.black45,
                  surfaceTintColor: Colors.transparent,
                  color: cs.surfaceContainerHigh,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(
                      color: cs.outlineVariant.withValues(alpha: 0.3),
                    ),
                  ),
                  onSelected: (value) {
                    if (value == 'search') onSearchAll();
                  },
                  itemBuilder: (context) => [
                    if (hasMissingFiles)
                      PopupMenuItem(
                        value: 'search',
                        child: Row(
                          children: [
                            Icon(Icons.search, size: 20, color: cs.onSurface),
                            const SizedBox(width: 12),
                            Text(
                              'Search Releases',
                              style: tt.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SeasonStatusBadge extends StatelessWidget {
  final String status;
  final bool expanded;
  final bool isLoading;

  const SeasonStatusBadge({
    super.key,
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
