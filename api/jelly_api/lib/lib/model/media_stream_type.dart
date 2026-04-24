//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum MediaStreamType.
enum MediaStreamType {
          /// Enum MediaStreamType.
      @JsonValue(r'Audio')
      audio(r'Audio'),
          /// Enum MediaStreamType.
      @JsonValue(r'Video')
      video(r'Video'),
          /// Enum MediaStreamType.
      @JsonValue(r'Subtitle')
      subtitle(r'Subtitle'),
          /// Enum MediaStreamType.
      @JsonValue(r'EmbeddedImage')
      embeddedImage(r'EmbeddedImage'),
          /// Enum MediaStreamType.
      @JsonValue(r'Data')
      data(r'Data'),
          /// Enum MediaStreamType.
      @JsonValue(r'Lyric')
      lyric(r'Lyric');

  const MediaStreamType(this.value);

  final String value;

  @override
  String toString() => value;
}
