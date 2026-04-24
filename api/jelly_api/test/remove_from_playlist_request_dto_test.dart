import 'package:test/test.dart';
import 'package:jelly_api/jelly_api.dart';

// tests for RemoveFromPlaylistRequestDto
void main() {
  final RemoveFromPlaylistRequestDto? instance = /* RemoveFromPlaylistRequestDto(...) */ null;
  // TODO add properties to the entity

  group(RemoveFromPlaylistRequestDto, () {
    // Gets or sets the playlist identifiers of the items. Ignored when clearing the playlist.
    // List<String> playlistItemIds
    test('to test the property `playlistItemIds`', () async {
      // TODO
    });

    // Gets or sets a value indicating whether the entire playlist should be cleared.
    // bool clearPlaylist
    test('to test the property `clearPlaylist`', () async {
      // TODO
    });

    // Gets or sets a value indicating whether the playing item should be removed as well. Used only when clearing the playlist.
    // bool clearPlayingItem
    test('to test the property `clearPlayingItem`', () async {
      // TODO
    });

  });
}
