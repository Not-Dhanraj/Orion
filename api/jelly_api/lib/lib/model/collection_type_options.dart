//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// The collection type options.
enum CollectionTypeOptions {
          /// The collection type options.
      @JsonValue(r'movies')
      movies(r'movies'),
          /// The collection type options.
      @JsonValue(r'tvshows')
      tvshows(r'tvshows'),
          /// The collection type options.
      @JsonValue(r'music')
      music(r'music'),
          /// The collection type options.
      @JsonValue(r'musicvideos')
      musicvideos(r'musicvideos'),
          /// The collection type options.
      @JsonValue(r'homevideos')
      homevideos(r'homevideos'),
          /// The collection type options.
      @JsonValue(r'boxsets')
      boxsets(r'boxsets'),
          /// The collection type options.
      @JsonValue(r'books')
      books(r'books'),
          /// The collection type options.
      @JsonValue(r'mixed')
      mixed(r'mixed');

  const CollectionTypeOptions(this.value);

  final String value;

  @override
  String toString() => value;
}
