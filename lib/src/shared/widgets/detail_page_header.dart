import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:with_opacity/with_opacity.dart';

class DetailPageHeader extends StatelessWidget {
  final bool isMonitored;
  final String posterUrl;
  final String? title;
  final String? originalLanguage;
  final String? status;
  const DetailPageHeader({
    super.key,
    required this.isMonitored,
    required this.posterUrl,
    required this.title,
    required this.originalLanguage,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
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
                  var memWidth = min(
                    constraints.maxWidth,
                    constraints.maxHeight * 0.8,
                  );
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: CachedNetworkImage(
                      imageUrl: posterUrl,
                      memCacheWidth: memWidth.toInt(),
                      fit: BoxFit.fitWidth,
                      placeholder: (context, url) => SizedBox(
                        height: 200,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 12),
        Text(
          title ?? 'Unknown Title',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          'Original Language: ${originalLanguage ?? 'Unknown'}',
          textAlign: TextAlign.left,
          style: textTheme.labelLarge?.copyWith(
            color: textTheme.labelLarge?.color?.withCustomOpacity(0.8),
          ),
        ),
        Text(
          '${status?.capitalizeByWord() ?? 'Unknown Status'}, ${isMonitored ? 'Monitored' : 'Not Monitored'}',
          textAlign: TextAlign.left,
          style: textTheme.labelLarge?.copyWith(
            color: textTheme.labelLarge?.color?.withCustomOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
