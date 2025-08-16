import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for ParseApi
void main() {
  final instance = Sonarr().getParseApi();

  group(ParseApi, () {
    //Future<ParseResource> apiV3ParseGet({ String title, String path }) async
    test('test apiV3ParseGet', () async {
      // TODO
    });
  });
}
