import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for ItemUpdateApi
void main() {
  final instance = JellyApi().getItemUpdateApi();

  group(ItemUpdateApi, () {
    // Gets metadata editor info for an item.
    //
    //Future<MetadataEditorInfo> getMetadataEditorInfo(String itemId) async
    test('test getMetadataEditorInfo', () async {
      // TODO
    });

    // Updates an item.
    //
    //Future updateItem(String itemId, BaseItemDto baseItemDto) async
    test('test updateItem', () async {
      // TODO
    });

    // Updates an item's content type.
    //
    //Future updateItemContentType(String itemId, { String contentType }) async
    test('test updateItemContentType', () async {
      // TODO
    });

  });
}
