import 'package:client/src/features/jellyfin/presentation/widgets/player_control_button.dart';
import 'package:flutter/material.dart';

class PlayerCenterControls extends StatelessWidget {
  final bool playing;
  final VoidCallback onPlayPause;
  final VoidCallback onSkipBack;
  final VoidCallback onSkipForward;

  const PlayerCenterControls({
    super.key,
    required this.playing,
    required this.onPlayPause,
    required this.onSkipBack,
    required this.onSkipForward,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PlayerControlButton(
          icon: Icons.replay_10_rounded,
          size: 32,
          onTap: onSkipBack,
        ),
        const SizedBox(width: 16),
        PlayerControlButton(
          icon: playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
          size: 56,
          onTap: onPlayPause,
        ),
        const SizedBox(width: 16),
        PlayerControlButton(
          icon: Icons.forward_10_rounded,
          size: 32,
          onTap: onSkipForward,
        ),
      ],
    );
  }
}
