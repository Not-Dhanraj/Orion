import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MediaItemCard extends StatelessWidget {
  final String title;
  final String status;
  final String? posterUrl;
  final Map<String, String>? headers;

  const MediaItemCard({
    super.key,
    required this.title,
    required this.status,
    this.posterUrl,
    this.headers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (posterUrl != null)
            CachedNetworkImage(
              imageUrl: posterUrl!,
              httpHeaders: headers,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error, size: 50),
            )
          else
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.tv, size: 40, color: Colors.grey),
                  SizedBox(height: 8),
                  Text(
                    'No Poster\nAvailable',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.black.withAlpha(170),
                    Colors.transparent,
                  ],
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.fontSize,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    status[0].toUpperCase() + status.substring(1),
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white70,
                      fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
