import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for SeasonPassApi
void main() {
  final instance = Sonarr().getSeasonPassApi();

  group(SeasonPassApi, () {
    //Future apiV3SeasonpassPost({ SeasonPassResource seasonPassResource }) async
    test('test apiV3SeasonpassPost', () async {
      // TODO
    });
  });
}
