import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for UpdateLogFileApi
void main() {
  final instance = Sonarr().getUpdateLogFileApi();

  group(UpdateLogFileApi, () {
    //Future apiV3LogFileUpdateFilenameGet(String filename) async
    test('test apiV3LogFileUpdateFilenameGet', () async {
      // TODO
    });

    //Future<BuiltList<LogFileResource>> apiV3LogFileUpdateGet() async
    test('test apiV3LogFileUpdateGet', () async {
      // TODO
    });
  });
}
