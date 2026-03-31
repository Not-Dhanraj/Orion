import 'package:client/src/utils/context_extensions.dart';
import 'package:flutter/material.dart';

class MediaHeroHeader extends StatelessWidget {
  final String title;
  final String agency;
  final String posterUrl;
  final double syncProgress;
  final bool isMonitored;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const MediaHeroHeader({
    super.key,
    required this.title,
    required this.agency,
    required this.posterUrl,
    required this.syncProgress,
    this.isMonitored = false,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    final isMobile = context.isMobile;

    final poster = SizedBox(
      width: isMobile ? 170 : 224,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                posterUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Container(color: cs.surfaceContainer),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        cs.surface.withValues(alpha: 0.7),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    final meta = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'PRODUCTION AGENCY // $agency',
          style: tt.labelSmall!.copyWith(
            letterSpacing: 2.0,
            color: cs.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),

        Text(
          title.toUpperCase(),
          style: tt.displayMedium!.copyWith(
            height: 1.0,
            fontSize: isMobile ? 32 : 52,
            color: cs.onSurface,
            letterSpacing: -1.0,
          ),
        ),
        const SizedBox(height: 12),

        _MonitoredBadge(isMonitored: isMonitored),

        const SizedBox(height: 20),

        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SYSTEM SYNC STATUS',
                    style: tt.labelSmall!.copyWith(
                      fontSize: 9,
                      color: cs.outline,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    '${(syncProgress * 100).round()}% COMPLETE',
                    style: tt.labelSmall!.copyWith(
                      fontSize: 9,
                      color: cs.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              SizedBox(
                height: 2,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(color: cs.surfaceContainerHighest),
                    FractionallySizedBox(
                      alignment: Alignment.centerLeft,
                      widthFactor: syncProgress.clamp(0.0, 1.0),
                      child: Container(color: cs.primary),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),

        // Action buttons
        Row(
          children: [
            _HeroButton(
              label: 'EDIT SERIES',
              isPrimary: true,
              onPressed: onEdit,
            ),
            const SizedBox(width: 12),
            _HeroButton(
              label: 'DELETE',
              isPrimary: false,
              onPressed: onDelete,
              isDanger: true,
            ),
          ],
        ),
      ],
    );

    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [poster, const SizedBox(height: 20), meta],
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        poster,
        const SizedBox(width: 24),
        Expanded(child: meta),
      ],
    );
  }
}

class _MonitoredBadge extends StatelessWidget {
  final bool isMonitored;

  const _MonitoredBadge({required this.isMonitored});

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isMonitored
            ? cs.primary.withValues(alpha: 0.12)
            : cs.surfaceContainerHighest.withValues(alpha: 0.5),
        border: Border.all(
          color: isMonitored
              ? cs.primary.withValues(alpha: 0.6)
              : cs.outlineVariant,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isMonitored ? Icons.bookmark : Icons.bookmark_border,
            size: 11,
            color: isMonitored ? cs.primary : cs.outline,
          ),
          const SizedBox(width: 5),
          Text(
            isMonitored ? 'MONITORED' : 'UNMONITORED',
            style: tt.labelSmall!.copyWith(
              fontSize: 9,
              letterSpacing: 1.5,
              color: isMonitored ? cs.primary : cs.outline,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroButton extends StatelessWidget {
  final String label;
  final bool isPrimary;
  final bool isDanger;
  final VoidCallback onPressed;

  const _HeroButton({
    required this.label,
    required this.isPrimary,
    this.isDanger = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    final primaryColor = isDanger ? cs.error : cs.primary;
    final onPrimaryColor = isDanger ? cs.onError : cs.onPrimary;

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 34,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: isPrimary ? primaryColor : Colors.transparent,
          border: isPrimary
              ? null
              : Border.all(color: isDanger ? cs.error : cs.outlineVariant),
          borderRadius: BorderRadius.circular(2),
        ),
        child: Center(
          child: Text(
            label,
            style: tt.labelSmall!.copyWith(
              color: isPrimary ? onPrimaryColor : primaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
