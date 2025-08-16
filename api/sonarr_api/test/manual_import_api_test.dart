import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for ManualImportApi
void main() {
  final instance = Sonarr().getManualImportApi();

  group(ManualImportApi, () {
    //Future<BuiltList<ManualImportResource>> apiV3ManualimportGet({ String folder, String downloadId, int seriesId, int seasonNumber, bool filterExistingFiles }) async
    test('test apiV3ManualimportGet', () async {
      // TODO
    });

    //Future apiV3ManualimportPost({ BuiltList<ManualImportReprocessResource> manualImportReprocessResource }) async
    test('test apiV3ManualimportPost', () async {
      // TODO
    });
  });
}
