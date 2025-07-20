import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:with_opacity/with_opacity.dart';

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

  // Extract card count calculation to a static method for better performance
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

  // Extract status color logic
  static Color _getStatusColor(String status) {
    final lowerStatus = status.toLowerCase();
    return (lowerStatus == 'continuing' || lowerStatus == 'released')
        ? Colors.green.withCustomOpacity(0.7)
        : Colors.orange.withCustomOpacity(0.7);
  }

  // Extract status text formatting
  static String _formatStatus(String status) {
    return status.isEmpty
        ? ''
        : '${status[0].toUpperCase()}${status.substring(1).toLowerCase()}';
  }

  Widget _buildPlaceholderImage(ColorScheme colorScheme) {
    return Container(
      color: colorScheme.surfaceContainerHighest.withCustomOpacity(0.3),
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildErrorImage(ColorScheme colorScheme) {
    return Container(
      color: colorScheme.surfaceContainerHighest.withCustomOpacity(0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.broken_image_rounded,
            size: 50,
            color: colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 8),
          Text(
            'Image Error',
            style: TextStyle(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFallbackImage(ColorScheme colorScheme) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorScheme.surfaceContainerHighest.withCustomOpacity(0.5),
            colorScheme.surfaceContainerHighest.withCustomOpacity(0.7),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.movie_outlined,
            size: 50,
            color: colorScheme.onSurfaceVariant.withCustomOpacity(0.6),
          ),
          const SizedBox(height: 8),
          Text(
            'No Poster\nAvailable',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colorScheme.onSurfaceVariant.withCustomOpacity(0.8),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomGradientOverlay() {
    final formattedStatus = _formatStatus(status);

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(
                0xF2000000,
              ), // More efficient than Colors.black.withCustomOpacity(0.95)
              Color(
                0xB3000000,
              ), // More efficient than Colors.black.withCustomOpacity(0.7)
              Colors.transparent,
            ],
            stops: [0.0, 0.5, 0.95],
          ),
        ),
        padding: const EdgeInsets.fromLTRB(12, 48, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 3.0,
                    color: Colors.black54,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
            ),
            if (formattedStatus.isNotEmpty) ...[
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: _getStatusColor(status),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  formattedStatus,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardCount = _getCardCount(screenWidth);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Calculate cache width once
    final cacheWidth = (screenWidth / (cardCount * 1.013)).toInt();

    return Card(
      elevation: 4,
      shadowColor: colorScheme.shadow.withCustomOpacity(0.3),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outlineVariant.withCustomOpacity(0.1),
          width: 0.5,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Poster Image
          posterUrl != null
              ? CachedNetworkImage(
                  memCacheWidth: cacheWidth,
                  imageUrl: posterUrl!,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      _buildPlaceholderImage(colorScheme),
                  errorWidget: (context, url, error) =>
                      _buildErrorImage(colorScheme),
                )
              : _buildFallbackImage(colorScheme),

          // Bottom text gradient overlay
          _buildBottomGradientOverlay(),

          // Make the card tappable with better visual feedback
          if (onTap != null)
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                  splashColor: colorScheme.primary.withCustomOpacity(0.3),
                  highlightColor: colorScheme.primary.withCustomOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
