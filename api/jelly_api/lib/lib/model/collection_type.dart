//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Collection type.
enum CollectionType {
          /// Collection type.
      @JsonValue(r'unknown')
      unknown(r'unknown'),
          /// Collection type.
      @JsonValue(r'movies')
      movies(r'movies'),
          /// Collection type.
      @JsonValue(r'tvshows')
      tvshows(r'tvshows'),
          /// Collection type.
      @JsonValue(r'music')
      music(r'music'),
          /// Collection type.
      @JsonValue(r'musicvideos')
      musicvideos(r'musicvideos'),
          /// Collection type.
      @JsonValue(r'trailers')
      trailers(r'trailers'),
          /// Collection type.
      @JsonValue(r'homevideos')
      homevideos(r'homevideos'),
          /// Collection type.
      @JsonValue(r'boxsets')
      boxsets(r'boxsets'),
          /// Collection type.
      @JsonValue(r'books')
      books(r'books'),
          /// Collection type.
      @JsonValue(r'photos')
      photos(r'photos'),
          /// Collection type.
      @JsonValue(r'livetv')
      livetv(r'livetv'),
          /// Collection type.
      @JsonValue(r'playlists')
      playlists(r'playlists'),
          /// Collection type.
      @JsonValue(r'folders')
      folders(r'folders');

  const CollectionType(this.value);

  final String value;

  @override
  String toString() => value;
}
