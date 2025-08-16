import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for TaskApi
void main() {
  final instance = Sonarr().getTaskApi();

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
