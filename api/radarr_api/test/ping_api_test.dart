import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for PingApi
void main() {
  final instance = RadarrApi().getPingApi();

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
