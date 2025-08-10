import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:radarr/radarr.dart';
import 'package:with_opacity/with_opacity.dart';

class MovieHeader extends StatelessWidget {
  final String? posterUrl;
  final MovieResource movie;

  const MovieHeader({
    super.key,
    required this.posterUrl,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    final isMonitored = movie.monitored ?? false;
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
                maxHeight:
                    MediaQuery.of(context).size.height * 0.6, // Max 60% of screen
              ),
              child: CachedNetworkImage(
                memCacheWidth: MediaQuery.of(context).size.width.toInt(),
                imageUrl: posterUrl!,
                fit: BoxFit.fitWidth,
                placeholder: (context, url) => SizedBox(
                  height: 200,
                  child: Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          movie.title ?? 'Unknown Movie',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          'Original Language: ${movie.originalLanguage?.name ?? 'Unknown'}',
          textAlign: TextAlign.left,
          style: textTheme.labelLarge?.copyWith(
            color: textTheme.labelLarge?.color?.withCustomOpacity(0.8),
          ),
        ),
        Text(
          '${movie.status?.name.capitalizeByWord() ?? 'Unknown'}, ${isMonitored ? 'Monitored' : 'Not Monitored'}',
          textAlign: TextAlign.left,
          style: textTheme.labelLarge?.copyWith(
            color: textTheme.labelLarge?.color?.withCustomOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
