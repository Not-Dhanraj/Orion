import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesEditHeader extends StatelessWidget {
  final SonarrSeries series;

  const SeriesEditHeader({super.key, required this.series});

  String? _getImageUrl(SonarrSeries series, {String coverType = 'poster'}) {
    try {
      final image = series.images?.firstWhere(
        (image) => image.coverType == coverType,
      );
      return image?.remoteUrl;
    } catch (e) {
      // Ignore if not found
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final posterUrl = _getImageUrl(series);
    final fanartUrl = _getImageUrl(series, coverType: 'fanart');

    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withAlpha(60),
          width: 1,
        ),
      ),
      surfaceTintColor: theme.colorScheme.surfaceTint.withOpacity(0.08),
      child: Container(
        decoration: fanartUrl != null
            ? BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(fanartUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    theme.colorScheme.surface.withAlpha(217),
                    BlendMode.srcOver,
                  ),
                ),
              )
            : null,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Poster image
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.shadow.withAlpha(90),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: posterUrl != null
                      ? SizedBox(
                          width: 100,
                          height: 150,
                          child: CachedNetworkImage(
                            memCacheWidth: 300,
                            imageUrl: posterUrl,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Center(
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              width: 100,
                              height: 150,
                              color: theme.colorScheme.surfaceContainerHighest,
                              child: const Icon(
                                Icons.image_not_supported,
                                size: 30,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 100,
                          height: 150,
                          color: theme.colorScheme.surfaceContainerHighest,
                          child: const Icon(Icons.movie, size: 30),
                        ),
                ),
              ),
              const SizedBox(width: 16.0),
              // Series info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.tertiary.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: theme.colorScheme.shadow.withAlpha(40),
                            blurRadius: 4,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Text(
                        'Edit Series',
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: theme.colorScheme.onTertiary,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      series.title ?? 'Unknown Series',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 3.0,
                            color: theme.colorScheme.shadow.withOpacity(0.3),
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8.0),
                    const SizedBox(height: 10.0),
                    Wrap(
                      spacing: 10.0,
                      runSpacing: 10.0,
                      children: [
                        if (series.year != null)
                          TweenAnimationBuilder<double>(
                            duration: const Duration(milliseconds: 500),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            curve: Curves.easeOutCubic,
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: Opacity(opacity: value, child: child),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primaryContainer
                                    .withOpacity(0.7),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: theme.colorScheme.outlineVariant
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: theme.colorScheme.shadow.withAlpha(
                                      15,
                                    ),
                                    blurRadius: 2,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    size: 14,
                                    color: theme.colorScheme.primary,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    '${series.year}',
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (series.network != null)
                          TweenAnimationBuilder<double>(
                            duration: const Duration(milliseconds: 600),
                            tween: Tween<double>(begin: 0.0, end: 1.0),
                            curve: Curves.easeOutCubic,
                            builder: (context, value, child) {
                              return Transform.scale(
                                scale: value,
                                child: Opacity(opacity: value, child: child),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primaryContainer
                                    .withOpacity(0.7),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: theme.colorScheme.outlineVariant
                                      .withOpacity(0.3),
                                  width: 0.5,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: theme.colorScheme.shadow.withAlpha(
                                      15,
                                    ),
                                    blurRadius: 2,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.tv,
                                    size: 14,
                                    color: theme.colorScheme.primary,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    series.network!,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
