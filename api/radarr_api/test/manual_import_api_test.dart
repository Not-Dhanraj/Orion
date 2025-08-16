import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for ManualImportApi
void main() {
  final instance = Radarr().getManualImportApi();

  group(ManualImportApi, () {
    //Future<BuiltList<ManualImportResource>> apiV3ManualimportGet({ String folder, String downloadId, int movieId, bool filterExistingFiles }) async
    test('test apiV3ManualimportGet', () async {
      // TODO
    });

    //Future apiV3ManualimportPost({ BuiltList<ManualImportReprocessResource> manualImportReprocessResource }) async
    test('test apiV3ManualimportPost', () async {
      // TODO
    });
  });
}
