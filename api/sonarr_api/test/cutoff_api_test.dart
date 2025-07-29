import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for CutoffApi
void main() {
  final instance = Sonarr().getCutoffApi();

  group(CutoffApi, () {
    //Future<EpisodeResourcePagingResource> apiV3WantedCutoffGet({ int page, int pageSize, String sortKey, SortDirection sortDirection, bool includeSeries, bool includeEpisodeFile, bool includeImages, bool monitored }) async
    test('test apiV3WantedCutoffGet', () async {
      // TODO
    });

    //Future<EpisodeResource> apiV3WantedCutoffIdGet(int id) async
    test('test apiV3WantedCutoffIdGet', () async {
      // TODO
    });
  });
}
