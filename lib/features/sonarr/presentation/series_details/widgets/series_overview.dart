import 'package:client/core/widgets/overview_card.dart';
import 'package:flutter/material.dart';

class SeriesOverview extends StatelessWidget {
  final String overview;

  const SeriesOverview({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          OverviewCard(
            overview: overview,
          ),
        ],
      ),
    );
  }
}
