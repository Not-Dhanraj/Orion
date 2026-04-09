import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for SeasonPassApi
void main() {
  final instance = SonarrApi().getSeasonPassApi();

  group(SeasonPassApi, () {
    //Future apiV3SeasonpassPost({ SeasonPassResource seasonPassResource }) async
    test('test apiV3SeasonpassPost', () async {
      // TODO
    });

  });
}
