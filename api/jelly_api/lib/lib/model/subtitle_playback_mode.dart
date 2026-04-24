//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// An enum representing a subtitle playback mode.
enum SubtitlePlaybackMode {
          /// An enum representing a subtitle playback mode.
      @JsonValue(r'Default')
      default_(r'Default'),
          /// An enum representing a subtitle playback mode.
      @JsonValue(r'Always')
      always(r'Always'),
          /// An enum representing a subtitle playback mode.
      @JsonValue(r'OnlyForced')
      onlyForced(r'OnlyForced'),
          /// An enum representing a subtitle playback mode.
      @JsonValue(r'None')
      none(r'None'),
          /// An enum representing a subtitle playback mode.
      @JsonValue(r'Smart')
      smart(r'Smart');

  const SubtitlePlaybackMode(this.value);

  final String value;

  @override
  String toString() => value;
}
