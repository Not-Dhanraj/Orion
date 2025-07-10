import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailSliverAppBar extends StatelessWidget {
  final String title;
  final String? fanartUrl;

  const DetailSliverAppBar({super.key, required this.title, this.fanartUrl});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      expandedHeight: 250.0,
      pinned: true,
      backgroundColor: theme.colorScheme.surface,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: [
              const Shadow(
                blurRadius: 8,
                color: Colors.black87,
                offset: Offset(0, 2),
              ),
            ],
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            if (fanartUrl != null)
              CachedNetworkImage(
                imageUrl: fanartUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: Colors.grey[800],
                  child: const Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey[800],
                  child: const Icon(
                    Icons.broken_image,
                    size: 50,
                    color: Colors.white54,
                  ),
                ),
              )
            else
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      theme.primaryColor.withAlpha(204),
                      theme.primaryColor.withAlpha(102),
                    ],
                  ),
                ),
              ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withAlpha(178)],
                  stops: const [0.3, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
