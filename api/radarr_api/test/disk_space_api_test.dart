import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for DiskSpaceApi
void main() {
  final instance = RadarrApi().getDiskSpaceApi();

  group(DiskSpaceApi, () {
    //Future<List<DiskSpaceResource>> apiV3DiskspaceGet() async
    test('test apiV3DiskspaceGet', () async {
      // TODO
    });

  });
}
