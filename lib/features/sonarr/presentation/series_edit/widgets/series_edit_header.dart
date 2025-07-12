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
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: theme.colorScheme.outlineVariant.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Container(
        decoration: fanartUrl != null
            ? BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(fanartUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    theme.colorScheme.surface.withOpacity(0.85),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: posterUrl != null
                    ? Container(
                        width: 100,
                        height: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.shadow.withOpacity(
                                0.3,
                              ),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: CachedNetworkImage(
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
                            color: theme.colorScheme.surfaceVariant,
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
                        color: theme.colorScheme.surfaceVariant,
                        child: const Icon(Icons.movie, size: 30),
                      ),
              ),
              const SizedBox(width: 16.0),
              // Series info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Edit Series',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      series.title ?? 'Unknown Series',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8.0),
                    if (series.year != null)
                      Text(
                        'Year: ${series.year}',
                        style: theme.textTheme.bodyMedium,
                      ),
                    if (series.network != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          'Network: ${series.network}',
                          style: theme.textTheme.bodyMedium,
                        ),
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
