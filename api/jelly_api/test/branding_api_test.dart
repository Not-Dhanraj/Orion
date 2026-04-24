import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for BrandingApi
void main() {
  final instance = JellyApi().getBrandingApi();

  group(BrandingApi, () {
    // Gets branding css.
    //
    //Future<String> getBrandingCss() async
    test('test getBrandingCss', () async {
      // TODO
    });

    // Gets branding css.
    //
    //Future<String> getBrandingCss2() async
    test('test getBrandingCss2', () async {
      // TODO
    });

    // Gets branding configuration.
    //
    //Future<BrandingOptionsDto> getBrandingOptions() async
    test('test getBrandingOptions', () async {
      // TODO
    });

  });
}
