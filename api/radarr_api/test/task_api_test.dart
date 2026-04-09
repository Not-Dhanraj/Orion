import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for TaskApi
void main() {
  final instance = RadarrApi().getTaskApi();

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
