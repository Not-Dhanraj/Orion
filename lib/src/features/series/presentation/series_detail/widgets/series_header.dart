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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),

            child: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  var memWidth = constraints.maxWidth;
                  return CachedNetworkImage(
                    imageUrl: posterUrl!,
                    memCacheWidth: memWidth.toInt(),
                    fit: BoxFit.fitWidth,
                    placeholder: (context, url) => SizedBox(
                      height: 200,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  );
                },
              ),
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
