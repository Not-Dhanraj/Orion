import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for GenresApi
void main() {
  final instance = JellyApi().getGenresApi();

  group(GenresApi, () {
    // Gets a genre, by name.
    //
    //Future<BaseItemDto> getGenre(String genreName, { String userId }) async
    test('test getGenre', () async {
      // TODO
    });

    // Gets all genres from a given item, folder, or the entire library.
    //
    //Future<BaseItemDtoQueryResult> getGenres({ int startIndex, int limit, String searchTerm, String parentId, List<ItemFields> fields, List<BaseItemKind> excludeItemTypes, List<BaseItemKind> includeItemTypes, bool isFavorite, int imageTypeLimit, List<ImageType> enableImageTypes, String userId, String nameStartsWithOrGreater, String nameStartsWith, String nameLessThan, List<ItemSortBy> sortBy, List<SortOrder> sortOrder, bool enableImages, bool enableTotalRecordCount }) async
    test('test getGenres', () async {
      // TODO
    });

  });
}
