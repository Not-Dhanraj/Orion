import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for BackupApi
void main() {
  final instance = JellyApi().getBackupApi();

  group(BackupApi, () {
    // Creates a new Backup.
    //
    //Future<BackupManifestDto> createBackup({ BackupOptionsDto backupOptionsDto }) async
    test('test createBackup', () async {
      // TODO
    });

    // Gets the descriptor from an existing archive is present.
    //
    //Future<BackupManifestDto> getBackup(String path) async
    test('test getBackup', () async {
      // TODO
    });

    // Gets a list of all currently present backups in the backup directory.
    //
    //Future<List<BackupManifestDto>> listBackups() async
    test('test listBackups', () async {
      // TODO
    });

    // Restores to a backup by restarting the server and applying the backup.
    //
    //Future startRestoreBackup(BackupRestoreRequestDto backupRestoreRequestDto) async
    test('test startRestoreBackup', () async {
      // TODO
    });

  });
}
