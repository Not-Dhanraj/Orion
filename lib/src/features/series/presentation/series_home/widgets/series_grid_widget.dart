import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/features/series/presentation/series_detail/series_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesGridItem extends StatelessWidget {
  final int index;
  final int count;
  final SeriesResource series;

  const SeriesGridItem({
    super.key,
    required this.index,
    required this.series,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    final imgUrl = series.images
        ?.firstWhere(
          (image) => image.coverType == MediaCoverTypes.poster,
          orElse: () => MediaCover(),
        )
        .remoteUrl;
    final mediaquery = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return OpenContainer(
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      openElevation: 0,
      closedElevation: 0,
      transitionDuration: Duration(milliseconds: 250),
      closedColor: Colors.transparent,
      transitionType: ContainerTransitionType.fadeThrough,
      openColor: Colors.transparent,
      closedBuilder: (context, action) {
        return Stack(
          children: [
            imgUrl == null
                ? Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.zero,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Icon(
                          TablerIcons.photo_x,
                          size: 48,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Poster not found',
                          textAlign: TextAlign.center,
                          style: textTheme.bodyLarge?.copyWith(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      memCacheWidth: mediaquery.size.width ~/ (count * 0.8),
                      imageUrl: imgUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(TablerIcons.photo_cancel),
                    ),
                  ),
            if (series.ratings?.value != null)
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        TablerIcons.star_filled,
                        color: Colors.amber,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        series.ratings?.value.toString() ?? 'N/A',
                        style: textTheme.bodySmall?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withCustomOpacity(0.8),
                      Colors.black.withCustomOpacity(0.6),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.5, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      series.title ?? 'Unknown Series',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      series.year?.toString() ?? 'Unknown Year',
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      openBuilder: (context, _) => SeriesDetailsPage(series: series),
    );
  }
}
