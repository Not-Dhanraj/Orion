import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for VideoAttachmentsApi
void main() {
  final instance = JellyApi().getVideoAttachmentsApi();

  group(VideoAttachmentsApi, () {
    // Get video attachment.
    //
    //Future<Uint8List> getAttachment(String videoId, String mediaSourceId, int index) async
    test('test getAttachment', () async {
      // TODO
    });

  });
}
