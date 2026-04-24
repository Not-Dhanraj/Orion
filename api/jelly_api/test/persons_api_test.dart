import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for PersonsApi
void main() {
  final instance = JellyApi().getPersonsApi();

  group(PersonsApi, () {
    // Get person by name.
    //
    //Future<BaseItemDto> getPerson(String name, { String userId }) async
    test('test getPerson', () async {
      // TODO
    });

    // Gets all persons.
    //
    //Future<BaseItemDtoQueryResult> getPersons({ int limit, String searchTerm, List<ItemFields> fields, List<ItemFilter> filters, bool isFavorite, bool enableUserData, int imageTypeLimit, List<ImageType> enableImageTypes, List<String> excludePersonTypes, List<String> personTypes, String appearsInItemId, String userId, bool enableImages }) async
    test('test getPersons', () async {
      // TODO
    });

  });
}
