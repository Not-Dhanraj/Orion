import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for ItemLookupApi
void main() {
  final instance = JellyApi().getItemLookupApi();

  group(ItemLookupApi, () {
    // Applies search criteria to an item and refreshes metadata.
    //
    //Future applySearchCriteria(String itemId, RemoteSearchResult remoteSearchResult, { bool replaceAllImages }) async
    test('test applySearchCriteria', () async {
      // TODO
    });

    // Get book remote search.
    //
    //Future<List<RemoteSearchResult>> getBookRemoteSearchResults(BookInfoRemoteSearchQuery bookInfoRemoteSearchQuery) async
    test('test getBookRemoteSearchResults', () async {
      // TODO
    });

    // Get box set remote search.
    //
    //Future<List<RemoteSearchResult>> getBoxSetRemoteSearchResults(BoxSetInfoRemoteSearchQuery boxSetInfoRemoteSearchQuery) async
    test('test getBoxSetRemoteSearchResults', () async {
      // TODO
    });

    // Get the item's external id info.
    //
    //Future<List<ExternalIdInfo>> getExternalIdInfos(String itemId) async
    test('test getExternalIdInfos', () async {
      // TODO
    });

    // Get movie remote search.
    //
    //Future<List<RemoteSearchResult>> getMovieRemoteSearchResults(MovieInfoRemoteSearchQuery movieInfoRemoteSearchQuery) async
    test('test getMovieRemoteSearchResults', () async {
      // TODO
    });

    // Get music album remote search.
    //
    //Future<List<RemoteSearchResult>> getMusicAlbumRemoteSearchResults(AlbumInfoRemoteSearchQuery albumInfoRemoteSearchQuery) async
    test('test getMusicAlbumRemoteSearchResults', () async {
      // TODO
    });

    // Get music artist remote search.
    //
    //Future<List<RemoteSearchResult>> getMusicArtistRemoteSearchResults(ArtistInfoRemoteSearchQuery artistInfoRemoteSearchQuery) async
    test('test getMusicArtistRemoteSearchResults', () async {
      // TODO
    });

    // Get music video remote search.
    //
    //Future<List<RemoteSearchResult>> getMusicVideoRemoteSearchResults(MusicVideoInfoRemoteSearchQuery musicVideoInfoRemoteSearchQuery) async
    test('test getMusicVideoRemoteSearchResults', () async {
      // TODO
    });

    // Get person remote search.
    //
    //Future<List<RemoteSearchResult>> getPersonRemoteSearchResults(PersonLookupInfoRemoteSearchQuery personLookupInfoRemoteSearchQuery) async
    test('test getPersonRemoteSearchResults', () async {
      // TODO
    });

    // Get series remote search.
    //
    //Future<List<RemoteSearchResult>> getSeriesRemoteSearchResults(SeriesInfoRemoteSearchQuery seriesInfoRemoteSearchQuery) async
    test('test getSeriesRemoteSearchResults', () async {
      // TODO
    });

    // Get trailer remote search.
    //
    //Future<List<RemoteSearchResult>> getTrailerRemoteSearchResults(TrailerInfoRemoteSearchQuery trailerInfoRemoteSearchQuery) async
    test('test getTrailerRemoteSearchResults', () async {
      // TODO
    });

  });
}
