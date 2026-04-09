import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for PingApi
void main() {
  final instance = SonarrApi().getPingApi();

  group(PingApi, () {
    //Future<PingResource> pingGet() async
    test('test pingGet', () async {
      // TODO
    });

    //Future<PingResource> pingHead() async
    test('test pingHead', () async {
      // TODO
    });

  });
}
