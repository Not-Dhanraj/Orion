import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for ItemRefreshApi
void main() {
  final instance = JellyApi().getItemRefreshApi();

  group(ItemRefreshApi, () {
    // Refreshes metadata for an item.
    //
    //Future refreshItem(String itemId, { MetadataRefreshMode metadataRefreshMode, MetadataRefreshMode imageRefreshMode, bool replaceAllMetadata, bool replaceAllImages, bool regenerateTrickplay }) async
    test('test refreshItem', () async {
      // TODO
    });

  });
}
