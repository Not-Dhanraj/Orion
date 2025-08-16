import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for LogFileApi
void main() {
  final instance = Sonarr().getLogFileApi();

  group(LogFileApi, () {
    //Future apiV3LogFileFilenameGet(String filename) async
    test('test apiV3LogFileFilenameGet', () async {
      // TODO
    });

    //Future<BuiltList<LogFileResource>> apiV3LogFileGet() async
    test('test apiV3LogFileGet', () async {
      // TODO
    });
  });
}
