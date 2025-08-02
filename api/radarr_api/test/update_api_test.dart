import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for UpdateApi
void main() {
  final instance = Radarr().getUpdateApi();

  group(UpdateApi, () {
    //Future<BuiltList<UpdateResource>> apiV3UpdateGet() async
    test('test apiV3UpdateGet', () async {
      // TODO
    });
  });
}
