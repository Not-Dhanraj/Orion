import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:with_opacity/with_opacity.dart';

class MediaWidget extends StatelessWidget {
  final String? imgUrl;
  final String title;
  final String year;
  final int count;
  final String rating;

  const MediaWidget({
    super.key,
    this.imgUrl,
    required this.title,
    required this.year,
    required this.count,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        imgUrl == null
            ? Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(TablerIcons.photo_x),
                    SizedBox(height: 8),
                    Text('Poster not found', textAlign: TextAlign.center),
                  ],
                ),
              )
            : CachedNetworkImage(
                memCacheWidth: mediaquery.size.width ~/ (count),
                imageUrl: imgUrl!,
                imageBuilder: (context, imageProvider) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    const Icon(TablerIcons.photo_cancel),
              ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withCustomOpacity(0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
                Text(
                  year,
                  style: textTheme.bodySmall?.copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
