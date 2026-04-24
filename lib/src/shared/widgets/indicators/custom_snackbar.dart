import 'package:client/src/shared/widgets/indicators/snackbar_config.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar_content.dart';
import 'package:flutter/material.dart';

class CustomSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    CustomSnackbarType type = CustomSnackbarType.error,
    Duration duration = const Duration(seconds: 4),
  }) {
    final cs = Theme.of(context).colorScheme;
    final config = SnackbarConfig.from(type, cs);

    // Captured once here; passed into the widget so that if the snackbar
    // content is rebuilt (e.g. after a navigation pop), the animation
    // controller can resume from the correct elapsed position instead of
    // restarting from zero. DO NOT REMOVE THIS
    final showTime = DateTime.now();

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          width: 512,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
          duration: duration,
          content: CustomSnackbarContent(
            message: message,
            config: config,
            showTime: showTime,
            duration: duration,
          ),
        ),
      );
  }
}
