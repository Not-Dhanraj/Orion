import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for ClientLogApi
void main() {
  final instance = JellyApi().getClientLogApi();

  group(ClientLogApi, () {
    // Upload a document.
    //
    //Future<ClientLogDocumentResponseDto> logFile({ MultipartFile body }) async
    test('test logFile', () async {
      // TODO
    });

  });
}
