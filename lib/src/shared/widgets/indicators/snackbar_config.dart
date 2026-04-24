import 'package:flutter/material.dart';

enum CustomSnackbarType { error, warning, success, info }

class SnackbarConfig {
  final Color borderColor;
  final Color iconColor;
  final Color backgroundColor;
  final IconData icon;

  const SnackbarConfig({
    required this.borderColor,
    required this.iconColor,
    required this.backgroundColor,
    required this.icon,
  });

  factory SnackbarConfig.from(CustomSnackbarType type, ColorScheme cs) {
    final bg = cs.surfaceContainerHigh;

    switch (type) {
      case CustomSnackbarType.error:
        return SnackbarConfig(
          borderColor: cs.error,
          iconColor: cs.error,
          backgroundColor: bg,
          icon: Icons.error_outline_rounded,
        );
      case CustomSnackbarType.warning:
        return SnackbarConfig(
          borderColor: Colors.orange,
          iconColor: Colors.orange,
          backgroundColor: bg,
          icon: Icons.warning_amber_rounded,
        );
      case CustomSnackbarType.success:
        return SnackbarConfig(
          borderColor: Colors.green,
          iconColor: Colors.green,
          backgroundColor: bg,
          icon: Icons.check_circle_outline_rounded,
        );
      case CustomSnackbarType.info:
        return SnackbarConfig(
          borderColor: cs.primary,
          iconColor: cs.primary,
          backgroundColor: bg,
          icon: Icons.info_outline_rounded,
        );
    }
  }
}
