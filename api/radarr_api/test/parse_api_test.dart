import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for ParseApi
void main() {
  final instance = RadarrApi().getParseApi();

  group(ParseApi, () {
    //Future<ParseResource> apiV3ParseGet({ String title }) async
    test('test apiV3ParseGet', () async {
      // TODO
    });

  });
}
