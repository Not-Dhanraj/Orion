import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

class PlayerBottomBar extends StatelessWidget {
  final Duration position;
  final Duration duration;
  final double progress;
  final SubtitleTrack currentSubtitle;
  final Color primaryColor;
  final bool buffering;
  final ValueChanged<double> onDragStart;
  final ValueChanged<double> onDragUpdate;
  final ValueChanged<double> onDragEnd;
  final String Function(Duration) fmt;

  const PlayerBottomBar({
    super.key,
    required this.position,
    required this.duration,
    required this.progress,
    required this.currentSubtitle,
    required this.primaryColor,
    required this.buffering,
    required this.onDragStart,
    required this.onDragUpdate,
    required this.onDragEnd,
    required this.fmt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
                activeTrackColor: primaryColor,
                inactiveTrackColor: Colors.white24,
                thumbColor: primaryColor,
                overlayColor: primaryColor.withValues(alpha: 0.18),
              ),
              child: Slider(
                value: progress,
                onChangeStart: onDragStart,
                onChanged: onDragUpdate,
                onChangeEnd: onDragEnd,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Text(
                    fmt(position),
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const Spacer(),
                  if (currentSubtitle.id != 'no')
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.closed_caption_rounded,
                            color: primaryColor,
                            size: 14,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            currentSubtitle.title ??
                                currentSubtitle.language ??
                                'CC',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  Text(
                    fmt(duration),
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => toggleFullscreen(context),
                    child: Icon(
                      isFullscreen(context)
                          ? Icons.fullscreen_exit_rounded
                          : Icons.fullscreen_rounded,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
