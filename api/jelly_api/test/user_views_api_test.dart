import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for UserViewsApi
void main() {
  final instance = JellyApi().getUserViewsApi();

  group(UserViewsApi, () {
    // Get user view grouping options.
    //
    //Future<List<SpecialViewOptionDto>> getGroupingOptions({ String userId }) async
    test('test getGroupingOptions', () async {
      // TODO
    });

    // Get user views.
    //
    //Future<BaseItemDtoQueryResult> getUserViews({ String userId, bool includeExternalContent, List<CollectionType> presetViews, bool includeHidden }) async
    test('test getUserViews', () async {
      // TODO
    });

  });
}
