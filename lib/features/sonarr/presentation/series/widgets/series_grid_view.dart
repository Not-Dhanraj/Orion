import 'package:client/core/widgets/media_item_card.dart';
import 'package:client/features/sonarr/presentation/series_details/view/sonarr_detail_screen.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesGridView extends StatelessWidget {
  final List<SonarrSeries> series;

  const SeriesGridView({super.key, required this.series});

  String? _getPosterUrl(SonarrSeries series) {
    try {
      final remotePoster = series.images?.firstWhere(
        (image) => image.coverType == 'poster',
      );
      if (remotePoster?.remoteUrl != null) {
        return remotePoster?.remoteUrl;
      }
    } catch (e) {
      // Ignore the error and return null if no poster is found.
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = switch (screenWidth) {
      >= 1400 => 6,
      >= 1200 => 5,
      >= 900 => 4,
      >= 600 => 3,
      >= 400 => 2,
      _ => 1,
    };

    // Sort series alphabetically by title
    final sortedSeries = [...series]
      ..sort((a, b) => (a.title ?? '').compareTo(b.title ?? ''));

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 0.65,
        crossAxisSpacing: 14,
        mainAxisSpacing: 16,
      ),
      padding: const EdgeInsets.fromLTRB(
        16,
        16,
        16,
        100,
      ), // Add extra bottom padding for FloatingActionButton and navigation bar
      itemCount: sortedSeries.length,
      itemBuilder: (context, index) {
        final s = sortedSeries[index];
        final posterUrl = _getPosterUrl(s);
        // Staggered animation effect for items
        return Entry.offset(
          yOffset: 50,
          xOffset: index.isEven ? -10 : 10,
          duration: Duration(milliseconds: 300 + (index % 5) * 50),
          child: Entry.opacity(
            duration: Duration(milliseconds: 300 + (index % 5) * 50),
            child: Hero(
              tag: s.id!,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SonarrDetailScreen(series: s),
                    ),
                  );
                },
                child: MediaItemCard(
                  title: s.title ?? 'Unknown Title',
                  status: s.status?.toString() ?? 'Unknown Status',
                  posterUrl: posterUrl,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
