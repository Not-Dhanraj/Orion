import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for DiskSpaceApi
void main() {
  final instance = SonarrApi().getDiskSpaceApi();

  group(DiskSpaceApi, () {
    //Future<List<DiskSpaceResource>> apiV3DiskspaceGet() async
    test('test apiV3DiskspaceGet', () async {
      // TODO
    });

  });
}
