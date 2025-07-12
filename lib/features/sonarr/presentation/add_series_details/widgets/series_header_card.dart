import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesHeaderCard extends StatelessWidget {
  const SeriesHeaderCard({super.key, required this.series});

  final SonarrSeriesLookup series;

  String? _getPosterUrl() {
    if (series.images == null || series.images!.isEmpty) {
      return null;
    }
    try {
      return series.images!
          .firstWhere((image) => image.coverType == 'poster')
          .remoteUrl;
    } catch (e) {
      return null;
    }
  }

  String? _getBannerUrl() {
    if (series.images == null || series.images!.isEmpty) {
      return null;
    }
    try {
      return series.images!
          .firstWhere(
            (image) => image.coverType == 'banner',
            orElse: () => SonarrSeriesImage(remoteUrl: null),
          )
          .remoteUrl;
    } catch (e) {
      return null;
    }
  }

  String _formatRating(double? rating) {
    if (rating == null) return 'N/A';
    return '${(rating * 10).toStringAsFixed(1)}%';
  }

  Widget _buildInfoChip(
    ThemeData theme,
    String text, {
    Color? backgroundColor,
    Color? textColor,
    IconData? icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? theme.colorScheme.surface.withAlpha(230),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: (backgroundColor ?? theme.colorScheme.surfaceContainerHighest)
              .withAlpha(100),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 14,
              color: textColor ?? theme.colorScheme.onSurface,
            ),
            const SizedBox(width: 4),
          ],
          Text(
            text,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: textColor ?? theme.colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingIndicator(ThemeData theme, double? rating) {
    if (rating == null) return const SizedBox.shrink();

    final displayRating = rating * 10; // Convert to percentage
    Color ratingColor;

    if (displayRating >= 75) {
      ratingColor = Colors.green;
    } else if (displayRating >= 60) {
      ratingColor = Colors.amber.shade700;
    } else {
      ratingColor = Colors.red;
    }

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        shape: BoxShape.circle,
        border: Border.all(color: ratingColor, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Text(
        '${displayRating.toStringAsFixed(0)}%',
        style: TextStyle(
          color: ratingColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final posterUrl = _getPosterUrl();
    final bannerUrl = _getBannerUrl();

    return Card(
      elevation: 6,
      shadowColor: Colors.black.withAlpha(100),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Banner/backdrop image with gradient overlay
              if (bannerUrl != null)
                ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black.withAlpha(230)],
                      stops: const [0.4, 1.0],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.srcOver,
                  child: CachedNetworkImage(
                    imageUrl: bannerUrl,
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: theme.colorScheme.surfaceContainerHighest,
                      height: 220,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: theme.colorScheme.surfaceContainerHighest,
                      height: 220,
                      child: const Icon(Icons.error, color: Colors.white),
                    ),
                  ),
                )
              else
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        theme.colorScheme.primary.withAlpha(50),
                        theme.colorScheme.primary.withAlpha(150),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.movie,
                    size: 80,
                    color: theme.colorScheme.primary.withAlpha(150),
                  ),
                ),

              // Content overlay at the bottom
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (posterUrl != null)
                        Hero(
                          tag: 'poster-${series.tvdbId}',
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withAlpha(100),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: CachedNetworkImage(
                                imageUrl: posterUrl,
                                width: 100,
                                height: 150,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => Container(
                                  color:
                                      theme.colorScheme.surfaceContainerHighest,
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                                errorWidget: (context, url, error) => Container(
                                  color:
                                      theme.colorScheme.surfaceContainerHighest,
                                  child: const Icon(Icons.broken_image),
                                ),
                              ),
                            ),
                          ),
                        )
                      else
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withAlpha(100),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.image_not_supported,
                              size: 40,
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              series.title ?? 'Unknown Title',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withAlpha(180),
                                    blurRadius: 3,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (series.year != null) ...[
                              const SizedBox(height: 4),
                              Text(
                                '${series.year}',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  color: Colors.white.withOpacity(0.9),
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withAlpha(180),
                                      blurRadius: 2,
                                      offset: const Offset(1, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            const SizedBox(height: 12),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: [
                                _buildInfoChip(
                                  theme,
                                  'Network: ${series.network ?? 'Unknown'}',
                                  icon: Icons.tv,
                                ),
                                _buildInfoChip(
                                  theme,
                                  'Status: ${series.status ?? 'Unknown'}',
                                  icon: Icons.info_outline,
                                ),
                                if (series.runtime != null)
                                  _buildInfoChip(
                                    theme,
                                    '${series.runtime} min',
                                    icon: Icons.access_time,
                                  ),
                                if (series.ratings?.value != null)
                                  _buildInfoChip(
                                    theme,
                                    _formatRating(series.ratings?.value),
                                    backgroundColor: theme.colorScheme.primary
                                        .withAlpha(70),
                                    textColor: theme.colorScheme.primary,
                                    icon: Icons.star,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (series.ratings?.value != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: _buildRatingIndicator(
                            theme,
                            series.ratings?.value,
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              // Year indicator at top-right
              if (series.year != null)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      '${series.year}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.description,
                      size: 20,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Overview',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  series.overview ?? 'No overview available for this series.',
                  style: theme.textTheme.bodyMedium,
                ),
                if (series.genres != null && series.genres!.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.category,
                        size: 20,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Genres',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: series.genres!
                        .map(
                          (genre) => Chip(
                            label: Text(genre),
                            backgroundColor:
                                theme.colorScheme.secondaryContainer,
                            labelStyle: TextStyle(
                              color: theme.colorScheme.onSecondaryContainer,
                              fontWeight: FontWeight.w500,
                            ),
                            padding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                          ),
                        )
                        .toList(),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
