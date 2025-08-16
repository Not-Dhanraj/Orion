import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for DiskSpaceApi
void main() {
  final instance = Radarr().getDiskSpaceApi();

  group(DiskSpaceApi, () {
    //Future<BuiltList<DiskSpaceResource>> apiV3DiskspaceGet() async
    test('test apiV3DiskspaceGet', () async {
      // TODO
    });
  });
}
