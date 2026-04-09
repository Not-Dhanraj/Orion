import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for UpdateLogFileApi
void main() {
  final instance = SonarrApi().getUpdateLogFileApi();

  group(UpdateLogFileApi, () {
    //Future apiV3LogFileUpdateFilenameGet(String filename) async
    test('test apiV3LogFileUpdateFilenameGet', () async {
      // TODO
    });

    //Future<List<LogFileResource>> apiV3LogFileUpdateGet() async
    test('test apiV3LogFileUpdateGet', () async {
      // TODO
    });

  });
}
