import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for ManualImportApi
void main() {
  final instance = SonarrApi().getManualImportApi();

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
