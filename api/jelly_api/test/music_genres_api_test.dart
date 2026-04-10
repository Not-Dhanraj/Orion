import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for MusicGenresApi
void main() {
  final instance = JellyApi().getMusicGenresApi();

  group(MusicGenresApi, () {
    // Gets a music genre, by name.
    //
    //Future<BaseItemDto> getMusicGenre(String genreName, { String userId }) async
    test('test getMusicGenre', () async {
      // TODO
    });

    // Gets all music genres from a given item, folder, or the entire library.
    //
    //Future<BaseItemDtoQueryResult> getMusicGenres({ int startIndex, int limit, String searchTerm, String parentId, List<ItemFields> fields, List<BaseItemKind> excludeItemTypes, List<BaseItemKind> includeItemTypes, bool isFavorite, int imageTypeLimit, List<ImageType> enableImageTypes, String userId, String nameStartsWithOrGreater, String nameStartsWith, String nameLessThan, List<ItemSortBy> sortBy, List<SortOrder> sortOrder, bool enableImages, bool enableTotalRecordCount }) async
    test('test getMusicGenres', () async {
      // TODO
    });

  });
}
