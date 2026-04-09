import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for BackupApi
void main() {
  final instance = SonarrApi().getBackupApi();

  group(BackupApi, () {
    //Future<List<BackupResource>> apiV3SystemBackupGet() async
    test('test apiV3SystemBackupGet', () async {
      // TODO
    });

    //Future apiV3SystemBackupIdDelete(int id) async
    test('test apiV3SystemBackupIdDelete', () async {
      // TODO
    });

    //Future apiV3SystemBackupRestoreIdPost(int id) async
    test('test apiV3SystemBackupRestoreIdPost', () async {
      // TODO
    });

    //Future apiV3SystemBackupRestoreUploadPost() async
    test('test apiV3SystemBackupRestoreUploadPost', () async {
      // TODO
    });

  });
}
