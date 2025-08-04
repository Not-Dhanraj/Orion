import 'package:built_collection/built_collection.dart';
import 'package:client/src/core/application/api_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sonarr/sonarr.dart';

class SeriesRepository {
  final Sonarr _api;
  SeriesRepository(this._api);

  Future<BuiltList<SeriesResource>?> fetchAll() async {
    var response = await _api.getSeriesApi().apiV3SeriesGet();
    return response.data;
  }

  Future<SeriesResource?> fetchById(int id) async {
    var response = await _api.getSeriesApi().apiV3SeriesIdGet(id: id);
    return response.data;
  }

  Future<SeriesResource?> create(SeriesResource series) async {
    var response = await _api.getSeriesApi().apiV3SeriesPost(
      seriesResource: series,
    );
    return response.data;
  }

  Future<SeriesResource?> update(SeriesResource series) async {
    var response = await _api.getSeriesApi().apiV3SeriesIdPut(
      id: series.id!.toString(),
      seriesResource: series,
    );
    return response.data;
  }

  Future<void> delete(int id) async {
    await _api.getSeriesApi().apiV3SeriesIdDelete(id: id);
  }

  Future<BuiltList<SeriesResource>?> search(String term) async {
    var response = await _api.getSeriesLookupApi().apiV3SeriesLookupGet(
      term: term,
    );
    return response.data;
  }
}

final seriesRepositoryProvider = Provider<SeriesRepository>((ref) {
  return SeriesRepository(ref.watch(seriesApiProvider));
});
