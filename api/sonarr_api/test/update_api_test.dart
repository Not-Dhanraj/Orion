import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for UpdateApi
void main() {
  final instance = Sonarr().getUpdateApi();

  group(UpdateApi, () {
    //Future<BuiltList<UpdateResource>> apiV3UpdateGet() async
    test('test apiV3UpdateGet', () async {
      // TODO
    });
  });
}
