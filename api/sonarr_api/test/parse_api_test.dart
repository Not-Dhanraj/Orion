import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for ParseApi
void main() {
  final instance = SonarrApi().getParseApi();

  group(ParseApi, () {
    //Future<ParseResource> apiV3ParseGet({ String title }) async
    test('test apiV3ParseGet', () async {
      // TODO
    });

  });
}
