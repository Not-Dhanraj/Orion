import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/shared/utils/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class MediaHeroHeader extends StatelessWidget {
  final String title;
  final String? agency;
  final String? posterUrl;
  final double syncProgress;
  final bool isMonitored;
  final String? syncStatusLabel;
  final String? agencyLabel;
  final List<Widget> actions;

  const MediaHeroHeader({
    super.key,
    required this.title,
    this.agency,
    this.posterUrl,
    required this.syncProgress,
    this.isMonitored = false,
    this.syncStatusLabel = 'SYNC STATUS',
    this.agencyLabel = 'PRODUCTION NETWORK',
    this.actions = const [],
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
              (posterUrl != null && posterUrl != '')
                  ? CachedNetworkImage(
                      imageUrl: posterUrl!,
                      memCacheWidth: isMobile ? 180 : 234,
                      fit: BoxFit.fill,
                      errorWidget: (context, _, _) => Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF1C1B1D), Color(0xFF2A2A2C)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Icon(TablerIcons.photo_exclamation, size: 15),
                      ),
                    )
                  : Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF1C1B1D), Color(0xFF2A2A2C)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Icon(TablerIcons.photo_exclamation, size: 15),
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
        if (agency != null)
          Text(
            '$agencyLabel // $agency',
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
            letterSpacing: -.5,
          ),
        ),
        const SizedBox(height: 12),

        _MonitoredBadge(isMonitored: isMonitored),

        const SizedBox(height: 20),

        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    syncStatusLabel!,
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

        Wrap(
          spacing: 12,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: actions,
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
