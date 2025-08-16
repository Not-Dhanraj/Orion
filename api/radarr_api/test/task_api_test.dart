import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for TaskApi
void main() {
  final instance = Radarr().getTaskApi();

  group(TaskApi, () {
    //Future<BuiltList<TaskResource>> apiV3SystemTaskGet() async
    test('test apiV3SystemTaskGet', () async {
      // TODO
    });

    //Future<TaskResource> apiV3SystemTaskIdGet(int id) async
    test('test apiV3SystemTaskIdGet', () async {
      // TODO
    });
  });
}
