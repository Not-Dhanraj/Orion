import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for TvShowsApi
void main() {
  final instance = JellyApi().getTvShowsApi();

  group(TvShowsApi, () {
    // Gets episodes for a tv season.
    //
    //Future<BaseItemDtoQueryResult> getEpisodes(String seriesId, { String userId, List<ItemFields> fields, int season, String seasonId, bool isMissing, String adjacentTo, String startItemId, int startIndex, int limit, bool enableImages, int imageTypeLimit, List<ImageType> enableImageTypes, bool enableUserData, ItemSortBy sortBy }) async
    test('test getEpisodes', () async {
      // TODO
    });

    // Gets a list of next up episodes.
    //
    //Future<BaseItemDtoQueryResult> getNextUp({ String userId, int startIndex, int limit, List<ItemFields> fields, String seriesId, String parentId, bool enableImages, int imageTypeLimit, List<ImageType> enableImageTypes, bool enableUserData, DateTime nextUpDateCutoff, bool enableTotalRecordCount, bool disableFirstEpisode, bool enableResumable, bool enableRewatching }) async
    test('test getNextUp', () async {
      // TODO
    });

    // Gets seasons for a tv series.
    //
    //Future<BaseItemDtoQueryResult> getSeasons(String seriesId, { String userId, List<ItemFields> fields, bool isSpecialSeason, bool isMissing, String adjacentTo, bool enableImages, int imageTypeLimit, List<ImageType> enableImageTypes, bool enableUserData }) async
    test('test getSeasons', () async {
      // TODO
    });

    // Gets a list of upcoming episodes.
    //
    //Future<BaseItemDtoQueryResult> getUpcomingEpisodes({ String userId, int startIndex, int limit, List<ItemFields> fields, String parentId, bool enableImages, int imageTypeLimit, List<ImageType> enableImageTypes, bool enableUserData }) async
    test('test getUpcomingEpisodes', () async {
      // TODO
    });

  });
}
