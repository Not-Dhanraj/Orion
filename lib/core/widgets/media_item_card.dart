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
      shadowColor: Colors.black.withOpacity(0.3),
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
                color: theme.colorScheme.surfaceVariant.withOpacity(0.3),
                child: const Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                color: theme.colorScheme.surfaceVariant.withOpacity(0.5),
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
              color: theme.colorScheme.surfaceVariant.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.tv,
                    size: 50,
                    color: theme.colorScheme.onSurfaceVariant.withOpacity(0.6),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'No Poster\nAvailable',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: theme.colorScheme.onSurfaceVariant.withOpacity(
                        0.8,
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
                    Colors.black.withOpacity(0.95), // Darker at bottom
                    Colors.black.withOpacity(0.7),
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
                            color: Colors.white.withOpacity(0.8),
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
                  splashColor: theme.colorScheme.primary.withOpacity(0.3),
                  highlightColor: theme.colorScheme.primary.withOpacity(0.1),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
