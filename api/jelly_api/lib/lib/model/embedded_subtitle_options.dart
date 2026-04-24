//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// An enum representing the options to disable embedded subs.
enum EmbeddedSubtitleOptions {
          /// An enum representing the options to disable embedded subs.
      @JsonValue(r'AllowAll')
      allowAll(r'AllowAll'),
          /// An enum representing the options to disable embedded subs.
      @JsonValue(r'AllowText')
      allowText(r'AllowText'),
          /// An enum representing the options to disable embedded subs.
      @JsonValue(r'AllowImage')
      allowImage(r'AllowImage'),
          /// An enum representing the options to disable embedded subs.
      @JsonValue(r'AllowNone')
      allowNone(r'AllowNone');

  const EmbeddedSubtitleOptions(this.value);

  final String value;

  @override
  String toString() => value;
}
