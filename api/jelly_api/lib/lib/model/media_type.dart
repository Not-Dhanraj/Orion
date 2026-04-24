//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Media types.
enum MediaType {
          /// Media types.
      @JsonValue(r'Unknown')
      unknown(r'Unknown'),
          /// Media types.
      @JsonValue(r'Video')
      video(r'Video'),
          /// Media types.
      @JsonValue(r'Audio')
      audio(r'Audio'),
          /// Media types.
      @JsonValue(r'Photo')
      photo(r'Photo'),
          /// Media types.
      @JsonValue(r'Book')
      book(r'Book');

  const MediaType(this.value);

  final String value;

  @override
  String toString() => value;
}
