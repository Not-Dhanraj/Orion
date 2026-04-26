import 'package:flutter/material.dart';

class MediaOverview extends StatefulWidget {
  final String overview;
  final String label;

  const MediaOverview({
    super.key,
    required this.overview,
    this.label = 'OVERVIEW',
  });

  @override
  State<MediaOverview> createState() => _MediaOverviewState();
}

class _MediaOverviewState extends State<MediaOverview> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: tt.labelSmall!.copyWith(
            fontSize: 9,
            letterSpacing: 2.0,
            color: cs.outline,
          ),
        ),
        const SizedBox(height: 8),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: Alignment.topCenter,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              widget.overview,
              maxLines: _isExpanded ? null : 7,
              overflow: _isExpanded ? null : TextOverflow.ellipsis,
              style: tt.bodyMedium!.copyWith(
                color: cs.onSurfaceVariant,
                height: 1.6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
