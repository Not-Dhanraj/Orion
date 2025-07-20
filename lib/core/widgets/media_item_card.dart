import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:with_opacity/with_opacity.dart';

class MediaItemCard extends StatelessWidget {
  final String title;
  final String status;
  final String? posterUrl;

  const MediaItemCard({
    super.key,
    required this.title,
    required this.status,
    this.posterUrl,
  });

  static int _getCardCount(double screenWidth) {
    return switch (screenWidth) {
      >= 1400 => 6,
      >= 1200 => 5,
      >= 900 => 4,
      >= 600 => 3,
      >= 400 => 2,
      _ => 1,
    };
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardCount = _getCardCount(screenWidth);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final cacheWidth = (screenWidth / (cardCount * 1.013)).toInt();

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(16),
      child: Stack(
        fit: StackFit.expand,
        children: [
          posterUrl != null
              ? CachedNetworkImage(
                  memCacheWidth: cacheWidth,
                  imageUrl: posterUrl!,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(
                      color: colorScheme.primary,
                    ),
                  ),
                  errorWidget: (context, url, error) => Center(
                    child: Icon(Icons.error, color: colorScheme.error),
                  ),
                )
              : Center(
                  child: Icon(
                    Icons.image_not_supported,
                    color: colorScheme.onSurface.withCustomOpacity(0.5),
                    size: 48,
                  ),
                ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xF2000000), Colors.transparent],
                ),
              ),
              padding: const EdgeInsets.fromLTRB(12, 48, 12, 12),
              //Add status text
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(color: Colors.black54, offset: Offset(0, 1)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
