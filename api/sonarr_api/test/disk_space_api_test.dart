import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for DiskSpaceApi
void main() {
  final instance = Sonarr().getDiskSpaceApi();

  group(DiskSpaceApi, () {
    //Future<BuiltList<DiskSpaceResource>> apiV3DiskspaceGet() async
    test('test apiV3DiskspaceGet', () async {
      // TODO
    });
  });
}
