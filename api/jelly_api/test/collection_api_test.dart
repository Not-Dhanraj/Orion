import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for CollectionApi
void main() {
  final instance = JellyApi().getCollectionApi();

  group(CollectionApi, () {
    // Adds items to a collection.
    //
    //Future addToCollection(String collectionId, List<String> ids) async
    test('test addToCollection', () async {
      // TODO
    });

    // Creates a new collection.
    //
    //Future<CollectionCreationResult> createCollection({ String name, List<String> ids, String parentId, bool isLocked }) async
    test('test createCollection', () async {
      // TODO
    });

    // Removes items from a collection.
    //
    //Future removeFromCollection(String collectionId, List<String> ids) async
    test('test removeFromCollection', () async {
      // TODO
    });

  });
}
