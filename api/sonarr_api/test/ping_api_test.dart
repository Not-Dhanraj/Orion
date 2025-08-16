import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for PingApi
void main() {
  final instance = Sonarr().getPingApi();

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
