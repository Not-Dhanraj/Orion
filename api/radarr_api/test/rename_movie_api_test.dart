import 'package:test/test.dart';
import 'package:radarr/radarr.dart';

/// tests for RenameMovieApi
void main() {
  final instance = Radarr().getRenameMovieApi();

  group(RenameMovieApi, () {
    //Future<BuiltList<RenameMovieResource>> apiV3RenameGet({ BuiltList<int> movieId }) async
    test('test apiV3RenameGet', () async {
      // TODO
    });
  });
}
