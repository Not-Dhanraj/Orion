import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for LogFileApi
void main() {
  final instance = RadarrApi().getLogFileApi();

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
