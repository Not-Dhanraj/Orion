import 'package:flutter/material.dart';

enum VideoFit {
  contain(
    label: 'Contain',
    description: 'Fit entire video within bounds',
    icon: Icons.fit_screen_rounded,
    boxFit: BoxFit.contain,
  ),
  cover(
    label: 'Cover',
    description: 'Fill screen, cropping edges',
    icon: Icons.crop_rounded,
    boxFit: BoxFit.cover,
  ),
  fill(
    label: 'Fill',
    description: 'Stretch to fill, may distort',
    icon: Icons.open_in_full_rounded,
    boxFit: BoxFit.fill,
  ),
  fitWidth(
    label: 'Fit Width',
    description: 'Fill screen width, letterbox top/bottom',
    icon: Icons.swap_horiz_rounded,
    boxFit: BoxFit.fitWidth,
  ),
  fitHeight(
    label: 'Fit Height',
    description: 'Fill screen height, pillarbox sides',
    icon: Icons.swap_vert_rounded,
    boxFit: BoxFit.fitHeight,
  );

  final String label;
  final String description;
  final IconData icon;
  final BoxFit boxFit;

  const VideoFit({
    required this.label,
    required this.description,
    required this.icon,
    required this.boxFit,
  });
}

const VideoFit kDefaultVideoFit = VideoFit.contain;
