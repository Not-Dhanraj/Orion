import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for CommandApi
void main() {
  final instance = Sonarr().getCommandApi();

  group(CommandApi, () {
    //Future<BuiltList<CommandResource>> apiV3CommandGet() async
    test('test apiV3CommandGet', () async {
      // TODO
    });

    //Future apiV3CommandIdDelete(int id) async
    test('test apiV3CommandIdDelete', () async {
      // TODO
    });

    //Future<CommandResource> apiV3CommandIdGet(int id) async
    test('test apiV3CommandIdGet', () async {
      // TODO
    });

    //Future<CommandResource> apiV3CommandPost({ CommandResource commandResource }) async
    test('test apiV3CommandPost', () async {
      // TODO
    });
  });
}
