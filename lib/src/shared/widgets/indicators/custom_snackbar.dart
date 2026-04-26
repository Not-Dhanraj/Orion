import 'package:client/src/shared/widgets/indicators/snackbar_config.dart';
import 'package:client/src/shared/widgets/indicators/custom_snackbar_content.dart';
import 'package:flutter/material.dart';

class CustomSnackbar {
  static OverlayEntry? _currentEntry;

  static void show(
    BuildContext context, {
    required String message,
    CustomSnackbarType type = CustomSnackbarType.error,
    Duration duration = const Duration(seconds: 4),
  }) {
    final cs = Theme.of(context).colorScheme;
    final config = SnackbarConfig.from(type, cs);
    final showTime = DateTime.now();

    _currentEntry?.remove();
    _currentEntry = null;

    final overlay = Overlay.of(context, rootOverlay: true);

    late final OverlayEntry entry;

    entry = OverlayEntry(
      builder: (context) {
        return Positioned(
          bottom: MediaQuery.of(context).viewInsets.bottom + 24,
          left: 0,
          right: 0,
          child: Center(
            child: Material(
              color: Colors.transparent,
              child: SizedBox(
                width: 512,
                child: Dismissible(
                  key: ValueKey(showTime),
                  direction: DismissDirection.down,
                  onDismissed: (_) {
                    if (_currentEntry == entry) {
                      _currentEntry = null;
                      Future.microtask(() {
                        if (entry.mounted) entry.remove();
                      });
                    }
                  },
                  child: CustomSnackbarContent(
                    message: message,
                    config: config,
                    showTime: showTime,
                    duration: duration,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );

    _currentEntry = entry;
    overlay.insert(entry);

    Future.delayed(duration, () {
      if (_currentEntry == entry) {
        if (entry.mounted) {
          entry.remove();
        }
        _currentEntry = null;
      }
    });
  }
}
