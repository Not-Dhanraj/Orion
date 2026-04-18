import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class EpisodeRow extends StatelessWidget {
  final String number;
  final String title;
  final String codec;
  final Color statusColor;
  final bool isMonitored;
  final bool hasFile;
  final VoidCallback onToggleMonitor;
  final VoidCallback onSearch;
  final VoidCallback? onDelete;
  final VoidCallback? onShowDetails;
  final VoidCallback? onPlay;

  const EpisodeRow({
    super.key,
    required this.number,
    required this.title,
    required this.codec,
    required this.statusColor,
    required this.isMonitored,
    required this.hasFile,
    required this.onToggleMonitor,
    required this.onSearch,
    this.onDelete,
    this.onShowDetails,
    this.onPlay,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onShowDetails,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.1)),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 28,
                    child: Text(
                      number,
                      style: tt.labelSmall!.copyWith(color: cs.outline),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title.toUpperCase(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: tt.bodySmall!.copyWith(
                            color: cs.onSurface,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          codec,
                          style: tt.labelSmall!.copyWith(
                            fontSize: 9,
                            color: cs.outline,
                          ),
                        ),
                      ],
                    ),
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
                    size: 16,
                  ),
                  color: isMonitored
                      ? cs.primary
                      : cs.outline.withValues(alpha: 0.5),
                  onPressed: onToggleMonitor,
                  tooltip: isMonitored ? 'Unmonitor' : 'Monitor',
                ),
                IconButton(
                  icon: Icon(
                    hasFile ? Icons.download_done : Icons.download,
                    size: 16,
                  ),
                  color: hasFile
                      ? Colors.green
                      : cs.outline.withValues(alpha: 0.5),
                  onPressed: onSearch,
                  tooltip: 'Search Releases',
                ),
                if (hasFile && onDelete != null)
                  IconButton(
                    icon: Icon(TablerIcons.trash, size: 16),
                    color: cs.error.withValues(alpha: 0.7),
                    onPressed: onDelete,
                    tooltip: 'Delete File',
                  ),
                if (hasFile && onPlay != null)
                  IconButton(
                    icon: const Icon(TablerIcons.player_play_filled, size: 16),
                    color: cs.primary,
                    onPressed: onPlay,
                    tooltip: 'Play Episode',
                  ),
                const SizedBox(width: 8),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
