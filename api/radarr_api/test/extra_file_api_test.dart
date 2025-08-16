import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ExtraFileApi
void main() {
  final instance = Radarr().getExtraFileApi();

  group(ExtraFileApi, () {
    //Future<BuiltList<ExtraFileResource>> apiV3ExtrafileGet({ int movieId }) async
    test('test apiV3ExtrafileGet', () async {
      // TODO
    });
  });
}
