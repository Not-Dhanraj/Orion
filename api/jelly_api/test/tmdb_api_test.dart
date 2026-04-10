import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for TmdbApi
void main() {
  final instance = JellyApi().getTmdbApi();

  group(TmdbApi, () {
    // Gets the TMDb image configuration options.
    //
    //Future<ConfigImageTypes> tmdbClientConfiguration() async
    test('test tmdbClientConfiguration', () async {
      // TODO
    });

  });
}
