import 'package:client/src/features/jellyfin/presentation/jellyfin_player/video_fit.dart';
import 'package:flutter/material.dart';

class PlayerTopBar extends StatelessWidget {
  final String title;
  final double speed;
  final VideoFit currentFit;
  final VoidCallback onBack;
  final VoidCallback onAudioSubtitlesTap;
  final VoidCallback onQualityTap;
  final VoidCallback onSpeedVolumeTap;
  final VoidCallback onFitTap;

  const PlayerTopBar({
    super.key,
    required this.title,
    required this.speed,
    required this.currentFit,
    required this.onBack,
    required this.onAudioSubtitlesTap,
    required this.onQualityTap,
    required this.onSpeedVolumeTap,
    required this.onFitTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onBack,
              tooltip: 'Back',
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black54)],
                ),
              ),
            ),
            if (speed != 1.0)
              Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: const BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.zero,
                ),
                child: Text(
                  '${speed}x',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (currentFit != kDefaultVideoFit)
              Container(
                margin: const EdgeInsets.only(right: 4),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: const BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.zero,
                ),
                child: Text(
                  currentFit.label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            IconButton(
              icon: const Icon(
                Icons.subtitles_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onAudioSubtitlesTap,
              tooltip: 'Subtitles & Audio',
            ),
            IconButton(
              icon: const Icon(
                Icons.high_quality_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onQualityTap,
              tooltip: 'Quality',
            ),
            IconButton(
              icon: Icon(
                currentFit.icon,
                color: currentFit != kDefaultVideoFit
                    ? Colors.white
                    : Colors.white70,
                size: 22,
              ),
              onPressed: onFitTap,
              tooltip: 'Video Fit',
            ),
            IconButton(
              icon: const Icon(
                Icons.tune_rounded,
                color: Colors.white,
                size: 22,
              ),
              onPressed: onSpeedVolumeTap,
              tooltip: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
