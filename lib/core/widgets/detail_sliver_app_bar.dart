import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailSliverAppBar extends StatelessWidget {
  final String title;
  final String? fanartUrl;
  final List<Widget>? actions;

  const DetailSliverAppBar({
    super.key,
    required this.title,
    this.fanartUrl,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverAppBar(
      expandedHeight: 250.0,
      pinned: true,
      backgroundColor: theme.colorScheme.surface,
      actions: actions,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // Calculate the collapse ratio
          final double expandedHeight = 250.0;
          final double collapsedHeight =
              kToolbarHeight + MediaQuery.of(context).padding.top;
          final double currentHeight = constraints.maxHeight;

          // Calculate animation progress (0.0 = fully collapsed, 1.0 = fully expanded)
          final double t =
              ((currentHeight - collapsedHeight) /
                      (expandedHeight - collapsedHeight))
                  .clamp(0.0, 1.0);

          // Calculate horizontal padding for the title
          // When collapsed (t=0): padding for back button (56.0)
          // When expanded (t=1): minimal left padding (16.0)
          final double leftPadding = 56.0 * (1 - t) + 16.0 * t;

          // Calculate text color based on collapse state and theme
          final bool isDarkTheme = theme.brightness == Brightness.dark;
          final Color expandedTextColor = Colors.white;
          final Color collapsedTextColor = isDarkTheme
              ? Colors.white
              : theme.colorScheme.onSurface;
          final Color textColor =
              Color.lerp(collapsedTextColor, expandedTextColor, t) ??
              Colors.white;

          return FlexibleSpaceBar(
            titlePadding: EdgeInsets.only(
              left: leftPadding,
              bottom: 16.0,
              right: 16.0, // Add right padding for multi-line titles
            ),
            title: Text(
              title,
              maxLines: 2, // Allow up to 2 lines
              overflow: TextOverflow.ellipsis, // Handle overflow gracefully
              style: theme.textTheme.titleLarge?.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
                shadows: t > 0.3
                    ? [
                        // Only add shadows when expanded enough
                        const Shadow(
                          blurRadius: 8,
                          color: Colors.black87,
                          offset: Offset(0, 2),
                        ),
                      ]
                    : null, // No shadows when collapsed for better readability
              ),
            ),
            background: Stack(
              fit: StackFit.expand,
              children: [
                if (fanartUrl != null)
                  CachedNetworkImage(
                    memCacheWidth: (MediaQuery.of(context).size.width / 1.013)
                        .toInt(),
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
                      colors: [
                        Colors.transparent,
                        Colors.black.withAlpha(
                          (178 * t).round(),
                        ), // Fade out gradient when collapsed
                      ],
                      stops: const [0.3, 1.0],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
