import 'package:test/test.dart';
import 'package:radarr_api/radarr_api.dart';


/// tests for MovieEditorApi
void main() {
  final instance = RadarrApi().getMovieEditorApi();

  group(MovieEditorApi, () {
    //Future apiV3MovieEditorDelete({ MovieEditorResource movieEditorResource }) async
    test('test apiV3MovieEditorDelete', () async {
      // TODO
    });

    //Future apiV3MovieEditorPut({ MovieEditorResource movieEditorResource }) async
    test('test apiV3MovieEditorPut', () async {
      // TODO
    });

  });
}
