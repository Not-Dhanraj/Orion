import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for FilterApi
void main() {
  final instance = JellyApi().getFilterApi();

  group(FilterApi, () {
    // Gets query filters.
    //
    //Future<QueryFilters> getQueryFilters({ String userId, String parentId, List<BaseItemKind> includeItemTypes, bool isAiring, bool isMovie, bool isSports, bool isKids, bool isNews, bool isSeries, bool recursive }) async
    test('test getQueryFilters', () async {
      // TODO
    });

    // Gets legacy query filters.
    //
    //Future<QueryFiltersLegacy> getQueryFiltersLegacy({ String userId, String parentId, List<BaseItemKind> includeItemTypes, List<MediaType> mediaTypes }) async
    test('test getQueryFiltersLegacy', () async {
      // TODO
    });

  });
}
