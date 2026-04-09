import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for ManualImportApi
void main() {
  final instance = RadarrApi().getManualImportApi();

  group(ManualImportApi, () {
    //Future<List<ManualImportResource>> apiV3ManualimportGet({ String folder, String downloadId, int movieId, bool filterExistingFiles }) async
    test('test apiV3ManualimportGet', () async {
      // TODO
    });

    //Future apiV3ManualimportPost({ List<ManualImportReprocessResource> manualImportReprocessResource }) async
    test('test apiV3ManualimportPost', () async {
      // TODO
    });

  });
}
