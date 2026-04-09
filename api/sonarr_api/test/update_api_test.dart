import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for UpdateApi
void main() {
  final instance = SonarrApi().getUpdateApi();

  group(UpdateApi, () {
    //Future<List<UpdateResource>> apiV3UpdateGet() async
    test('test apiV3UpdateGet', () async {
      // TODO
    });

  });
}
