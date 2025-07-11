import 'package:client/core/widgets/media_item_card.dart';
import 'package:flutter/material.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

class SeriesCard extends StatelessWidget {
  const SeriesCard({
    super.key,
    required this.series,
    required this.isInLibrary,
    required this.onAdd,
  });

  final SonarrSeriesLookup series;
  final bool isInLibrary;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    String? year;
    if (series.year != null) {
      year = series.year.toString();
    }

    Color statusColor = Colors.grey;
    if (series.status != null) {
      switch (series.status!.toLowerCase()) {
        case 'continuing':
          statusColor = Colors.green;
          break;
        case 'ended':
          statusColor = Colors.orange;
          break;
        default:
          statusColor = Colors.grey;
      }
    }

    return Stack(
      children: [
        MediaItemCard(
          title: series.title ?? 'Unknown Title',
          status: '',
          posterUrl: series.images
              ?.firstWhere(
                (image) => image.coverType == 'poster',
                orElse: () => SonarrSeriesImage(remoteUrl: null),
              )
              .remoteUrl,
        ),
        Positioned(
          top: 11,
          right: 11,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: isInLibrary
                  ? Colors.green
                  : Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(76), // 0.3 opacity
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: InkWell(
              onTap: isInLibrary ? null : onAdd,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isInLibrary ? Icons.check : Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                  if (isInLibrary) ...[
                    const SizedBox(width: 4),
                    const Text(
                      'In Library',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        if (year != null)
          Positioned(
            top: 11,
            left: 11,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(178), // 0.7 opacity
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                year,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        if (series.status != null)
          Positioned(
            top: 42,
            left: 11,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: statusColor.withAlpha(230), // 0.9 opacity
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(76), // 0.3 opacity
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Text(
                series.status!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
