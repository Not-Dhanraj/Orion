import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for BackupApi
void main() {
  final instance = Sonarr().getBackupApi();

  group(BackupApi, () {
    //Future<BuiltList<BackupResource>> apiV3SystemBackupGet() async
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
