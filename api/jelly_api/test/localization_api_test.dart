import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for LocalizationApi
void main() {
  final instance = JellyApi().getLocalizationApi();

  group(LocalizationApi, () {
    // Gets known countries.
    //
    //Future<List<CountryInfo>> getCountries() async
    test('test getCountries', () async {
      // TODO
    });

    // Gets known cultures.
    //
    //Future<List<CultureDto>> getCultures() async
    test('test getCultures', () async {
      // TODO
    });

    // Gets localization options.
    //
    //Future<List<LocalizationOption>> getLocalizationOptions() async
    test('test getLocalizationOptions', () async {
      // TODO
    });

    // Gets known parental ratings.
    //
    //Future<List<ParentalRating>> getParentalRatings() async
    test('test getParentalRatings', () async {
      // TODO
    });

  });
}
