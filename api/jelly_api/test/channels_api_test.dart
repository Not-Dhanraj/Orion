import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for ChannelsApi
void main() {
  final instance = JellyApi().getChannelsApi();

  group(ChannelsApi, () {
    // Get all channel features.
    //
    //Future<List<ChannelFeatures>> getAllChannelFeatures() async
    test('test getAllChannelFeatures', () async {
      // TODO
    });

    // Get channel features.
    //
    //Future<ChannelFeatures> getChannelFeatures(String channelId) async
    test('test getChannelFeatures', () async {
      // TODO
    });

    // Get channel items.
    //
    //Future<BaseItemDtoQueryResult> getChannelItems(String channelId, { String folderId, String userId, int startIndex, int limit, List<SortOrder> sortOrder, List<ItemFilter> filters, List<ItemSortBy> sortBy, List<ItemFields> fields }) async
    test('test getChannelItems', () async {
      // TODO
    });

    // Gets available channels.
    //
    //Future<BaseItemDtoQueryResult> getChannels({ String userId, int startIndex, int limit, bool supportsLatestItems, bool supportsMediaDeletion, bool isFavorite }) async
    test('test getChannels', () async {
      // TODO
    });

    // Gets latest channel items.
    //
    //Future<BaseItemDtoQueryResult> getLatestChannelItems({ String userId, int startIndex, int limit, List<ItemFilter> filters, List<ItemFields> fields, List<String> channelIds }) async
    test('test getLatestChannelItems', () async {
      // TODO
    });

  });
}
