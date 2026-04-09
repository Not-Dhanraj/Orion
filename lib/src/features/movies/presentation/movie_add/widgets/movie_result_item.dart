import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:radarr_api/radarr_api.dart';
import 'package:with_opacity/with_opacity.dart';

class MovieResultItem extends StatelessWidget {
  final MovieResource movie;
  final String subtitle;
  final String imageUrl;
  final bool isAdded;
  final bool isCreating;
  final VoidCallback? onAdd;

  const MovieResultItem({
    super.key,
    required this.movie,
    required this.subtitle,
    required this.imageUrl,
    required this.isAdded,
    required this.isCreating,
    this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isAdded ? cs.surface.withValues(alpha: 0.6) : cs.surface,
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.4)),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 60,
            decoration: BoxDecoration(
              color: cs.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(2),
              border: Border.all(color: Colors.white.withValues(alpha: 0.05)),
            ),
            child: imageUrl != ""
                ? CachedNetworkImage(
                    imageUrl: imageUrl,
                    memCacheWidth: 60,
                    fit: BoxFit.fill,
                    errorWidget: (context, _, _) => _fallbackIcon(),
                  )
                : _fallbackIcon(),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title ?? 'Unknown',
                  style: tt.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: isAdded
                        ? cs.onSurface.withCustomOpacity(0.45)
                        : null,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: tt.labelSmall!.copyWith(color: cs.outline),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          if (isAdded)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: cs.outlineVariant.withValues(alpha: 0.4),
                ),
              ),
              child: Text(
                'ADDED',
                style: tt.labelSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: cs.outline,
                ),
              ),
            )
          else
            OutlinedButton(
              onPressed: isCreating ? null : onAdd,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                side: BorderSide(color: cs.primary.withAlpha(200), width: 1),
              ),
              child: Text(
                'ADD +',
                style: tt.labelSmall!.copyWith(
                  color: cs.primary.withAlpha(200),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _fallbackIcon() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1C1B1D), Color(0xFF2A2A2C)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Icon(TablerIcons.photo_exclamation, size: 15),
    );
  }
}
