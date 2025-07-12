import 'package:client/core/api/api_client.dart';
import 'package:client/features/sonarr/application/provider/commands_provider/commands_provider.dart';
import 'package:client/features/sonarr/application/provider/episode_provider/episode_provider.dart';
import 'package:client/features/sonarr/application/provider/all_series_provider/all_series_provider.dart'
    as series_list;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr_flutter/sonarr_flutter.dart';

/// Provider for getting a single series by ID
final singleSeriesProvider = FutureProvider.autoDispose
    .family<SonarrSeries, int>((ref, seriesId) async {
      final sonarrApi = ref.read(sonarrProvider);
      return await sonarrApi.series.getSeries(seriesId: seriesId);
    });

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

  /// Toggles the monitoring status of a series
  Future<SonarrSeries> toggleSeriesMonitoring(SonarrSeries series) async {
    state = const AsyncValue.loading();
    try {
      final sonarrApi = _ref.read(sonarrProvider);
      // Clone the series and toggle its monitored status
      // Using this approach since we don't know if copyWith/copy is available
      series.monitored = !(series.monitored ?? false);

      // Update the series using the API
      final result = await sonarrApi.series.updateSeries(series: series);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Toggles the monitoring status of a specific season in a series
  Future<SonarrSeries> toggleSeasonMonitoring(
    SonarrSeries series,
    int seasonNumber,
  ) async {
    state = const AsyncValue.loading();
    try {
      final sonarrApi = _ref.read(sonarrProvider);

      // Find the season to update and toggle its monitored status
      if (series.seasons != null) {
        for (int i = 0; i < series.seasons!.length; i++) {
          if (series.seasons![i].seasonNumber == seasonNumber) {
            series.seasons![i].monitored =
                !(series.seasons![i].monitored ?? false);
            break;
          }
        }
      }

      // Update the series using the API
      final result = await sonarrApi.series.updateSeries(series: series);
      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Sets the monitoring status of a specific season in a series
  Future<SonarrSeries> setSeasonMonitoring(
    SonarrSeries series,
    int seasonNumber,
    bool monitored,
  ) async {
    state = const AsyncValue.loading();
    try {
      final sonarrApi = _ref.read(sonarrProvider);

      // Find the season to update and set its monitored status
      if (series.seasons != null) {
        for (int i = 0; i < series.seasons!.length; i++) {
          if (series.seasons![i].seasonNumber == seasonNumber) {
            series.seasons![i].monitored = monitored;
            break;
          }
        }
      }

      // Update the series using the API
      final result = await sonarrApi.series.updateSeries(series: series);

      // Invalidate the cached series data so it will be re-fetched with the updated values
      _ref.invalidate(singleSeriesProvider(series.id!));

      // Also invalidate the episodes since monitoring status affects them
      _ref.invalidate(seriesEpisodesProvider(series.id!));

      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Updates a series with new information
  Future<SonarrSeries> updateSeries(SonarrSeries series) async {
    state = const AsyncValue.loading();
    try {
      final sonarrApi = _ref.read(sonarrProvider);

      // Update the series using the API
      final result = await sonarrApi.series.updateSeries(series: series);
      // Invalidate the cached series data so it will be re-fetched with the updated values
      _ref.invalidate(singleSeriesProvider(series.id!));

      state = const AsyncValue.data(null);
      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }

  /// Deletes a series from Sonarr and updates the UI
  ///
  /// Returns true if deletion was successful, false otherwise
  Future<bool> deleteSeries(int seriesId) async {
    state = const AsyncValue.loading();
    try {
      final sonarrApi = _ref.read(sonarrProvider);

      // Delete the series using the API
      final result = await sonarrApi.series.deleteSeries(seriesId: seriesId);

      // Always update state to not-loading regardless of result
      state = const AsyncValue.data(null);

      // If deletion was successful, invalidate all relevant caches
      if (result == true) {
        // Invalidate the single series cache
        _ref.invalidate(singleSeriesProvider(seriesId));

        // Invalidate episodes for this series
        _ref.invalidate(seriesEpisodesProvider(seriesId));

        // Invalidate the main series list to refresh the UI
        _ref.invalidate(series_list.allSeriesProvider);
      }

      return result;
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
      rethrow;
    }
  }
}

/// Provider for SeriesManagementNotifier
final seriesManagementProvider =
    StateNotifierProvider<SeriesManagementNotifier, AsyncValue<void>>(
      (ref) => SeriesManagementNotifier(ref),
    );
