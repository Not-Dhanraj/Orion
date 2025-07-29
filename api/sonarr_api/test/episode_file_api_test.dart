import 'package:test/test.dart';
import 'package:sonarr/sonarr.dart';

/// tests for EpisodeFileApi
void main() {
  final instance = Sonarr().getEpisodeFileApi();

  group(EpisodeFileApi, () {
    //Future apiV3EpisodefileBulkDelete({ EpisodeFileListResource episodeFileListResource }) async
    test('test apiV3EpisodefileBulkDelete', () async {
      // TODO
    });

    //Future apiV3EpisodefileBulkPut({ BuiltList<EpisodeFileResource> episodeFileResource }) async
    test('test apiV3EpisodefileBulkPut', () async {
      // TODO
    });

    //Future apiV3EpisodefileEditorPut({ EpisodeFileListResource episodeFileListResource }) async
    test('test apiV3EpisodefileEditorPut', () async {
      // TODO
    });

    //Future<BuiltList<EpisodeFileResource>> apiV3EpisodefileGet({ int seriesId, BuiltList<int> episodeFileIds }) async
    test('test apiV3EpisodefileGet', () async {
      // TODO
    });

    //Future apiV3EpisodefileIdDelete(int id) async
    test('test apiV3EpisodefileIdDelete', () async {
      // TODO
    });

    //Future<EpisodeFileResource> apiV3EpisodefileIdGet(int id) async
    test('test apiV3EpisodefileIdGet', () async {
      // TODO
    });

    //Future<EpisodeFileResource> apiV3EpisodefileIdPut(String id, { EpisodeFileResource episodeFileResource }) async
    test('test apiV3EpisodefileIdPut', () async {
      // TODO
    });
  });
}
