import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';
import 'package:client/features/sonarr/data/series_management_provider/series_management_provider.dart';

class SeriesManagementService {
  final Ref _ref;

  SeriesManagementService(this._ref);

  Future<void> deleteSeries(BuildContext context, SonarrSeries series) async {
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    final seriesManagementNotifier = _ref.read(
      seriesManagementProvider.notifier,
    );

    final confirmed = await _showDeleteConfirmationDialog(context, series);

    if (confirmed == true && series.id != null) {
      final loadingOverlay = _showLoadingOverlay(context, 'Deleting series...');

      try {
        final result = await seriesManagementNotifier.deleteSeries(series.id!);
        loadingOverlay.remove();

        if (result) {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('${series.title} has been deleted'),
              backgroundColor: Colors.green,
              duration: const Duration(seconds: 2),
            ),
          );

          if (navigator.canPop()) {
            navigator.pop();
          }
        } else {
          scaffoldMessenger.showSnackBar(
            SnackBar(
              content: Text('Failed to delete ${series.title}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } catch (e) {
        loadingOverlay.remove();
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Error deleting series: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<bool?> _showDeleteConfirmationDialog(
    BuildContext context,
    SonarrSeries series,
  ) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Delete Series'),
        content: Text(
          'Are you sure you want to delete "${series.title}"?\n\n'
          'This will remove the entire series from Sonarr server.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('CANCEL'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('DELETE'),
          ),
        ],
      ),
    );
  }

  OverlayEntry _showLoadingOverlay(BuildContext context, String message) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Container(
        color: Colors.black54,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(message, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
    overlay.insert(overlayEntry);
    return overlayEntry;
  }
}
