import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';


/// tests for LyricsApi
void main() {
  final instance = JellyApi().getLyricsApi();

  group(LyricsApi, () {
    // Deletes an external lyric file.
    //
    //Future deleteLyrics(String itemId) async
    test('test deleteLyrics', () async {
      // TODO
    });

    // Downloads a remote lyric.
    //
    //Future<LyricDto> downloadRemoteLyrics(String itemId, String lyricId) async
    test('test downloadRemoteLyrics', () async {
      // TODO
    });

    // Gets an item's lyrics.
    //
    //Future<LyricDto> getLyrics(String itemId) async
    test('test getLyrics', () async {
      // TODO
    });

    // Gets the remote lyrics.
    //
    //Future<LyricDto> getRemoteLyrics(String lyricId) async
    test('test getRemoteLyrics', () async {
      // TODO
    });

    // Search remote lyrics.
    //
    //Future<List<RemoteLyricInfoDto>> searchRemoteLyrics(String itemId) async
    test('test searchRemoteLyrics', () async {
      // TODO
    });

    // Upload an external lyric file.
    //
    //Future<LyricDto> uploadLyrics(String itemId, String fileName, { MultipartFile body }) async
    test('test uploadLyrics', () async {
      // TODO
    });

  });
}
