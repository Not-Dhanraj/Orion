import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ParseApi
void main() {
  final instance = Radarr().getParseApi();

  group(ParseApi, () {
    //Future<ParseResource> apiV3ParseGet({ String title }) async
    test('test apiV3ParseGet', () async {
      // TODO
    });
  });
}
