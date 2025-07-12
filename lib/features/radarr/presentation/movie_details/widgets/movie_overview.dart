import 'package:flutter/material.dart';
import 'package:radarr_flutter/radarr_flutter.dart';

class MovieOverview extends StatefulWidget {
  final RadarrMovie movie;

  const MovieOverview({super.key, required this.movie});

  @override
  State<MovieOverview> createState() => _MovieOverviewState();
}

class _MovieOverviewState extends State<MovieOverview> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final overview = widget.movie.overview;

    if (overview == null || overview.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Overview', style: textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(
            'No overview available',
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Overview', style: textTheme.titleLarge),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
          child: AnimatedCrossFade(
            firstChild: Text(
              overview,
              style: textTheme.bodyMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            secondChild: Text(overview, style: textTheme.bodyMedium),
            crossFadeState: _expanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 300),
          ),
        ),
        if (overview.length > 150)
          TextButton(
            onPressed: () {
              setState(() {
                _expanded = !_expanded;
              });
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 0),
            ),
            child: Text(_expanded ? 'Show less' : 'Read more'),
          ),
      ],
    );
  }
}
