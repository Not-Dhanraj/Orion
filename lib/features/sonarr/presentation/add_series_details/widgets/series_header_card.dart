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

  Widget _buildInfoChip(
    ThemeData theme,
    String text, {
    Color? backgroundColor,
    Color? textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor ?? theme.colorScheme.surface.withAlpha(204), // 0.8 opacity
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25), // 0.1 opacity
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        text,
        style: theme.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w600,
          color: textColor ?? theme.colorScheme.onSurface,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final posterUrl = _getPosterUrl();

    return Card(
      elevation: 6,
      shadowColor: Colors.black.withAlpha(76), // 0.3 opacity
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              if (posterUrl != null)
                ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withAlpha(204), // 0.8 opacity
                      ],
                      stops: const [0.5, 1.0],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.srcOver,
                  child: CachedNetworkImage(
                    imageUrl: series.images!
                            .firstWhere(
                              (image) => image.coverType == 'banner',
                              orElse: () => SonarrSeriesImage(remoteUrl: null),
                            )
                            .remoteUrl ??
                        'https://via.placeholder.com/500x100?text=No+Banner+Available',
                    height: 220,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[800],
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Colors.grey[800],
                      child: const Icon(Icons.error, color: Colors.white),
                    ),
                  ),
                )
              else
                Container(
                  height: 220,
                  width: double.infinity,
                  color: theme.colorScheme.primary.withAlpha(51), // 0.2 opacity
                  child: Icon(
                    Icons.image_not_supported,
                    size: 80,
                    color: theme.colorScheme.primary,
                  ),
                ),
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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            imageUrl: posterUrl,
                            width: 90,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        )
                      else
                        Container(
                          width: 90,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const Center(
                            child: Icon(Icons.image_not_supported, size: 40),
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
                                    color: Colors.black.withAlpha(128), // 0.5 opacity
                                    blurRadius: 2,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            _buildInfoChip(
                              theme,
                              'Year: ${series.year ?? 'Unknown'}',
                            ),
                            const SizedBox(height: 4),
                            _buildInfoChip(
                              theme,
                              'Network: ${series.network ?? 'Unknown'}',
                            ),
                            const SizedBox(height: 4),
                            _buildInfoChip(
                              theme,
                              'Status: ${series.status ?? 'Unknown'}',
                            ),
                          ],
                        ),
                      ),
                    ],
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
                Text(
                  'Description',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  series.overview ?? 'No description available',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
