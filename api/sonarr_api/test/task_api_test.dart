import 'package:test/test.dart';
import 'package:sonarr_api/sonarr_api.dart';


/// tests for TaskApi
void main() {
  final instance = SonarrApi().getTaskApi();

  group(TaskApi, () {
    //Future<List<TaskResource>> apiV3SystemTaskGet() async
    test('test apiV3SystemTaskGet', () async {
      // TODO
    });

    //Future<TaskResource> apiV3SystemTaskIdGet(int id) async
    test('test apiV3SystemTaskIdGet', () async {
      // TODO
    });

  });
}
