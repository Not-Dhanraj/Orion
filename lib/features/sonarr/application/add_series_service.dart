import 'package:client/features/sonarr/application/provider/add_series_details_provider/add_series_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

final addSeriesServiceProvider =
    Provider.family<AddSeriesService, SonarrSeriesLookup>((ref, series) {
      return AddSeriesService(ref, series);
    });

class AddSeriesService {
  final Ref _ref;
  final SonarrSeriesLookup _series;

  AddSeriesService(this._ref, this._series);

  Future<void> addSeries(BuildContext context) async {
    final notifier = _ref.read(
      addSeriesDetailsNotifierProvider(_series).notifier,
    );
    final state = _ref.read(addSeriesDetailsNotifierProvider(_series));
    final navigator = Navigator.of(context);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    final success = await notifier.addSeries();

    if (context.mounted) {
      if (success) {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('${_series.title} added successfully'),
            backgroundColor: Colors.green,
          ),
        );
        navigator.pop(true);
      } else {
        scaffoldMessenger.showSnackBar(
          SnackBar(
            content: Text('Failed to add series: ${state.error}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
