import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for ArtistsApi
void main() {
  final instance = JellyApi().getArtistsApi();

  group(ArtistsApi, () {
    // Gets all album artists from a given item, folder, or the entire library.
    //
    //Future<BaseItemDtoQueryResult> getAlbumArtists({ double minCommunityRating, int startIndex, int limit, String searchTerm, String parentId, List<ItemFields> fields, List<BaseItemKind> excludeItemTypes, List<BaseItemKind> includeItemTypes, List<ItemFilter> filters, bool isFavorite, List<MediaType> mediaTypes, List<String> genres, List<String> genreIds, List<String> officialRatings, List<String> tags, List<int> years, bool enableUserData, int imageTypeLimit, List<ImageType> enableImageTypes, String person, List<String> personIds, List<String> personTypes, List<String> studios, List<String> studioIds, String userId, String nameStartsWithOrGreater, String nameStartsWith, String nameLessThan, List<ItemSortBy> sortBy, List<SortOrder> sortOrder, bool enableImages, bool enableTotalRecordCount }) async
    test('test getAlbumArtists', () async {
      // TODO
    });

    // Gets an artist by name.
    //
    //Future<BaseItemDto> getArtistByName(String name, { String userId }) async
    test('test getArtistByName', () async {
      // TODO
    });

    // Gets all artists from a given item, folder, or the entire library.
    //
    //Future<BaseItemDtoQueryResult> getArtists({ double minCommunityRating, int startIndex, int limit, String searchTerm, String parentId, List<ItemFields> fields, List<BaseItemKind> excludeItemTypes, List<BaseItemKind> includeItemTypes, List<ItemFilter> filters, bool isFavorite, List<MediaType> mediaTypes, List<String> genres, List<String> genreIds, List<String> officialRatings, List<String> tags, List<int> years, bool enableUserData, int imageTypeLimit, List<ImageType> enableImageTypes, String person, List<String> personIds, List<String> personTypes, List<String> studios, List<String> studioIds, String userId, String nameStartsWithOrGreater, String nameStartsWith, String nameLessThan, List<ItemSortBy> sortBy, List<SortOrder> sortOrder, bool enableImages, bool enableTotalRecordCount }) async
    test('test getArtists', () async {
      // TODO
    });

  });
}
