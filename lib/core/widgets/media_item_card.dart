import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MediaItemCard extends StatelessWidget {
  final String title;
  final String status;
  final String? posterUrl;
  final VoidCallback? onTap;

  const MediaItemCard({
    super.key,
    required this.title,
    required this.status,
    this.posterUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 6,
      shadowColor: Colors.black.withAlpha(76), // 0.3 opacity
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Poster Image
          if (posterUrl != null)
            CachedNetworkImage(
              imageUrl: posterUrl!,
              fit: BoxFit.cover,
              placeholder: (context, url) => Container(
                color: theme.colorScheme.surfaceContainerHighest.withAlpha(76), // 0.3 opacity
                child: const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                color: theme.colorScheme.surfaceContainerHighest.withAlpha(128), // 0.5 opacity
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.broken_image,
                      size: 50,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Image Error',
                      style: TextStyle(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            )
          else
            Container(
              color: theme.colorScheme.surfaceContainerHighest.withAlpha(128), // 0.5 opacity
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.tv,
                    size: 50,
                    color: theme.colorScheme.onSurfaceVariant.withAlpha(153), // 0.6 opacity
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'No Poster\nAvailable',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: theme.colorScheme.onSurfaceVariant.withAlpha(
                        204, // 0.8 opacity
                      ),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

          // Bottom text gradient overlay
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withAlpha(242), // 0.95 opacity
                    Colors.black.withAlpha(178), // 0.7 opacity
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.4, 0.9], // Extended gradient
                ),
              ),
              padding: const EdgeInsets.fromLTRB(
                8,
                48,
                12,
                8,
              ), // Extended top padding to avoid overlap
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  status.isNotEmpty
                      ? Text(
                          status[0].toUpperCase() +
                              status.substring(1).toLowerCase(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: Colors.white.withAlpha(204), // 0.8 opacity
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          ),

          // Make the card tappable
          if (onTap != null)
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  splashColor: theme.colorScheme.primary.withAlpha(76), // 0.3 opacity
                  highlightColor: theme.colorScheme.primary.withAlpha(25), // 0.1 opacity
                ),
              ),
            ),
        ],
      ),
    );
  }
}