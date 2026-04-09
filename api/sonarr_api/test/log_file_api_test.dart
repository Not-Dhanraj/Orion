import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for LogFileApi
void main() {
  final instance = SonarrApi().getLogFileApi();

  group(LogFileApi, () {
    //Future apiV3LogFileFilenameGet(String filename) async
    test('test apiV3LogFileFilenameGet', () async {
      // TODO
    });

    //Future<List<LogFileResource>> apiV3LogFileGet() async
    test('test apiV3LogFileGet', () async {
      // TODO
    });

  });
}
