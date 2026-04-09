import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for CommandApi
void main() {
  final instance = RadarrApi().getCommandApi();

  group(CommandApi, () {
    //Future<List<CommandResource>> apiV3CommandGet() async
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
