//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum VideoType.
enum VideoType {
          /// Enum VideoType.
      @JsonValue(r'VideoFile')
      videoFile(r'VideoFile'),
          /// Enum VideoType.
      @JsonValue(r'Iso')
      iso(r'Iso'),
          /// Enum VideoType.
      @JsonValue(r'Dvd')
      dvd(r'Dvd'),
          /// Enum VideoType.
      @JsonValue(r'BluRay')
      bluRay(r'BluRay');

  const VideoType(this.value);

  final String value;

  @override
  String toString() => value;
}
