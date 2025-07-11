import 'package:client/features/sonarr/data/commands_provider/commands_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// Notifier to manage series operations like refresh and rescan
class SeriesManagementNotifier extends StateNotifier<AsyncValue<void>> {
  final Ref _ref;

  SeriesManagementNotifier(this._ref) : super(const AsyncValue.data(null));

  /// Refreshes the metadata for a series
  Future<SonarrCommand> refreshSeries(int seriesId) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      final result = await commands.refreshSeries(seriesId);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Rescans the files on disk for a series
  Future<SonarrCommand> rescanSeries(int seriesId) async {
    state = const AsyncValue.loading();
    try {
      final commands = _ref.read(sonarrCommandsProvider);
      final result = await commands.rescanSeries(seriesId);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
}

/// Provider for SeriesManagementNotifier
final seriesManagementProvider = StateNotifierProvider<SeriesManagementNotifier, AsyncValue<void>>(
  (ref) => SeriesManagementNotifier(ref),
);
