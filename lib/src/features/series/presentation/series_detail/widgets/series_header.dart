import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:sonarr/sonarr.dart';
import 'package:with_opacity/with_opacity.dart';

class SeriesHeader extends StatelessWidget {
  final String? posterUrl;
  final SeriesResource series;

  const SeriesHeader({
    super.key,
    required this.posterUrl,
    required this.series,
  });

  @override
  Widget build(BuildContext context) {
    final isMonitored = series.monitored ?? false;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: posterUrl!,
              memCacheWidth: MediaQuery.of(context).size.width.toInt(),

              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) {
                return Card(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.image),
                        Text('No Image Available'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          series.title ?? 'Unknown Series',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          'Original Language: ${series.originalLanguage?.name ?? 'Unknown'}',
          textAlign: TextAlign.left,
          style: textTheme.labelLarge?.copyWith(
            color: textTheme.labelLarge?.color?.withCustomOpacity(0.8),
          ),
        ),
        Text(
          '${series.status?.name.capitalizeByWord() ?? 'Unknown'}, ${isMonitored ? 'Monitored' : 'Not Monitored'}',
          textAlign: TextAlign.left,
          style: textTheme.labelLarge?.copyWith(
            color: textTheme.labelLarge?.color?.withCustomOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
