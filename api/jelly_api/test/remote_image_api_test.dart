import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for RemoteImageApi
void main() {
  final instance = JellyApi().getRemoteImageApi();

  group(RemoteImageApi, () {
    // Downloads a remote image for an item.
    //
    //Future downloadRemoteImage(String itemId, ImageType type, { String imageUrl }) async
    test('test downloadRemoteImage', () async {
      // TODO
    });

    // Gets available remote image providers for an item.
    //
    //Future<List<ImageProviderInfo>> getRemoteImageProviders(String itemId) async
    test('test getRemoteImageProviders', () async {
      // TODO
    });

    // Gets available remote images for an item.
    //
    //Future<RemoteImageResult> getRemoteImages(String itemId, { ImageType type, int startIndex, int limit, String providerName, bool includeAllLanguages }) async
    test('test getRemoteImages', () async {
      // TODO
    });

  });
}
