import 'package:flutter/material.dart';

enum CustomSnackbarType { error, warning, success, info }

class CustomSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    CustomSnackbarType type = CustomSnackbarType.error,
  }) {
    final cs = Theme.of(context).colorScheme;

    final config = _SnackbarConfig.from(type, cs);

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          width: 512,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          duration: const Duration(seconds: 4),
          content: _CustomSnackbarContent(message: message, config: config),
        ),
      );
  }
}

class _SnackbarConfig {
  final Color borderColor;
  final Color iconColor;
  final Color backgroundColor;
  final IconData icon;

  const _SnackbarConfig({
    required this.borderColor,
    required this.iconColor,
    required this.backgroundColor,
    required this.icon,
  });

  factory _SnackbarConfig.from(CustomSnackbarType type, ColorScheme cs) {
    final bg = cs.surfaceContainerHigh;

    switch (type) {
      case CustomSnackbarType.error:
        return _SnackbarConfig(
          borderColor: cs.error,
          iconColor: cs.error,
          backgroundColor: bg,
          icon: Icons.error_outline_rounded,
        );
      case CustomSnackbarType.warning:
        return _SnackbarConfig(
          borderColor: Colors.orange,
          iconColor: Colors.orange,
          backgroundColor: bg,
          icon: Icons.warning_amber_rounded,
        );
      case CustomSnackbarType.success:
        return _SnackbarConfig(
          borderColor: Colors.green,
          iconColor: Colors.green,
          backgroundColor: bg,
          icon: Icons.check_circle_outline_rounded,
        );
      case CustomSnackbarType.info:
        return _SnackbarConfig(
          borderColor: cs.primary,
          iconColor: cs.primary,
          backgroundColor: bg,
          icon: Icons.info_outline_rounded,
        );
    }
  }
}

class _CustomSnackbarContent extends StatelessWidget {
  final String message;
  final _SnackbarConfig config;

  const _CustomSnackbarContent({required this.message, required this.config});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: config.backgroundColor,
        border: Border(left: BorderSide(color: config.borderColor, width: 3)),
      ),
      child: Row(
        children: [
          Icon(config.icon, color: config.iconColor, size: 18),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message.toUpperCase(),
              style: TextStyle(
                color: config.iconColor,
                fontSize: 11,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
