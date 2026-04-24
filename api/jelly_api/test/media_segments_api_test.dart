import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for MediaSegmentsApi
void main() {
  final instance = JellyApi().getMediaSegmentsApi();

  group(MediaSegmentsApi, () {
    // Gets all media segments based on an itemId.
    //
    //Future<MediaSegmentDtoQueryResult> getItemSegments(String itemId, { List<MediaSegmentType> includeSegmentTypes }) async
    test('test getItemSegments', () async {
      // TODO
    });

  });
}
