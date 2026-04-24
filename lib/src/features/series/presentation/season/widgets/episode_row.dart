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
  final bool isWatched;

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
    this.isWatched = false,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onShowDetails,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: cs.outlineVariant.withValues(alpha: 0.1),
                ),
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
                    PopupMenuButton<String>(
                      icon: Icon(Icons.more_vert, size: 18, color: cs.outline),
                      splashRadius: 20,
                      padding: EdgeInsets.zero,
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
                        if (value == 'monitor') onToggleMonitor();
                        if (value == 'search') onSearch();
                        if (value == 'delete' && onDelete != null) onDelete!();
                        if (value == 'play' && onPlay != null) onPlay!();
                      },
                      itemBuilder: (context) => [
                        if (hasFile && onPlay != null)
                          PopupMenuItem(
                            value: 'play',
                            child: Row(
                              children: [
                                Icon(
                                  TablerIcons.player_play_filled,
                                  size: 18,
                                  color: cs.primary,
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  'Play',
                                  style: tt.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        PopupMenuItem(
                          value: 'monitor',
                          child: Row(
                            children: [
                              Icon(
                                isMonitored
                                    ? Icons.bookmark_remove
                                    : Icons.bookmark_add,
                                size: 18,
                                color: cs.onSurface,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                isMonitored ? 'Unmonitor' : 'Monitor',
                                style: tt.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (!hasFile)
                          PopupMenuItem(
                            value: 'search',
                            child: Row(
                              children: [
                                Icon(
                                  hasFile
                                      ? Icons.download_done
                                      : Icons.download,
                                  size: 18,
                                  color: cs.onSurface,
                                ),
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
                        if (hasFile && onDelete != null)
                          PopupMenuItem(
                            value: 'delete',
                            child: Row(
                              children: [
                                Icon(
                                  TablerIcons.trash,
                                  size: 18,
                                  color: cs.error,
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  'Delete File',
                                  style: tt.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: cs.error,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(width: 4),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: statusColor,
                        borderRadius: BorderRadius.circular(1.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          if (isWatched)
            Positioned(
              top: 0,
              left: 0,
              child: CustomPaint(
                size: const Size(24, 24),
                painter: _WatchedTrianglePainter(color: cs.primary),
              ),
            ),
          if (isWatched)
            Positioned(
              top: 2,
              left: 2,
              child: Icon(Icons.check, size: 12, color: cs.onPrimary),
            ),
        ],
      ),
    );
  }
}

class _WatchedTrianglePainter extends CustomPainter {
  final Color color;

  _WatchedTrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _WatchedTrianglePainter oldDelegate) =>
      color != oldDelegate.color;
}
