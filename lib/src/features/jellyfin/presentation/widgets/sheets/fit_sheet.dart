import 'package:client/src/features/jellyfin/presentation/video_fit.dart';
import 'package:client/src/features/jellyfin/presentation/widgets/sheets/sheet_components.dart';
import 'package:flutter/material.dart';

class FitSheet extends StatefulWidget {
  final VideoFit currentFit;
  final ValueChanged<VideoFit> onFitChanged;

  const FitSheet({
    super.key,
    required this.currentFit,
    required this.onFitChanged,
  });

  @override
  State<FitSheet> createState() => _FitSheetState();
}

class _FitSheetState extends State<FitSheet> {
  late VideoFit _currentFit;

  @override
  void initState() {
    super.initState();
    _currentFit = widget.currentFit;
  }

  @override
  Widget build(BuildContext context) {
    return BaseSheet(
      title: 'Video Fit',
      label: 'SCALE MODE',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: VideoFit.values.map((fit) {
              final active = _currentFit == fit;
              return _FitOptionCard(
                fit: fit,
                active: active,
                onTap: () {
                  setState(() => _currentFit = fit);
                  widget.onFitChanged(fit);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _FitOptionCard extends StatelessWidget {
  final VideoFit fit;
  final bool active;
  final VoidCallback onTap;

  const _FitOptionCard({
    required this.fit,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.sizeOf(context).width;
    final cardWidth = (screenWidth - 48 - 10) / 2;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: cardWidth,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: active
              ? cs.primary.withValues(alpha: 0.1)
              : cs.surfaceContainerHigh,
          border: Border.all(
            color: active ? cs.primary : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: active
                    ? cs.primary.withValues(alpha: 0.15)
                    : cs.surfaceContainerHighest,
                shape: BoxShape.circle,
              ),
              child: Icon(
                fit.icon,
                size: 20,
                color: active ? cs.primary : cs.onSurfaceVariant,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fit.label,
                    style: tt.labelMedium?.copyWith(
                      color: active ? cs.onSurface : cs.onSurfaceVariant,
                      fontWeight: active ? FontWeight.w700 : FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    fit.description,
                    style: tt.labelSmall?.copyWith(
                      color: active
                          ? cs.primary.withValues(alpha: 0.8)
                          : cs.onSurfaceVariant.withValues(alpha: 0.7),
                      fontSize: 10,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            if (active)
              Icon(Icons.check_circle_rounded, color: cs.primary, size: 16),
          ],
        ),
      ),
    );
  }
}
