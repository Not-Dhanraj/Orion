import 'package:client/src/features/jellyfin/domain/video_quality.dart';
import 'package:client/src/features/jellyfin/presentation/jellyfin_player/widgets/sheets/sheet_components.dart';
import 'package:flutter/material.dart';

class QualitySheet extends StatefulWidget {
  final VideoQuality currentQuality;
  final List<VideoQuality> qualities;
  final ValueChanged<VideoQuality> onQualityChanged;

  const QualitySheet({
    super.key,
    required this.currentQuality,
    required this.qualities,
    required this.onQualityChanged,
  });

  @override
  State<QualitySheet> createState() => _QualitySheetState();
}

class _QualitySheetState extends State<QualitySheet> {
  late VideoQuality _currentQuality;

  @override
  void initState() {
    super.initState();
    _currentQuality = widget.currentQuality;
  }

  @override
  Widget build(BuildContext context) {
    return BaseSheet(
      title: 'Video Quality',
      label: 'RESOLUTION',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...widget.qualities.map(
            (q) => TrackTile(
              label: q.label,
              active: _currentQuality == q,
              onTap: () {
                setState(() => _currentQuality = q);
                widget.onQualityChanged(q);
              },
            ),
          ),
        ],
      ),
    );
  }
}
