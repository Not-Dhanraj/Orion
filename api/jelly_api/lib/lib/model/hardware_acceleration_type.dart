//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum containing hardware acceleration types.
enum HardwareAccelerationType {
          /// Enum containing hardware acceleration types.
      @JsonValue(r'none')
      none(r'none'),
          /// Enum containing hardware acceleration types.
      @JsonValue(r'amf')
      amf(r'amf'),
          /// Enum containing hardware acceleration types.
      @JsonValue(r'qsv')
      qsv(r'qsv'),
          /// Enum containing hardware acceleration types.
      @JsonValue(r'nvenc')
      nvenc(r'nvenc'),
          /// Enum containing hardware acceleration types.
      @JsonValue(r'v4l2m2m')
      v4l2m2m(r'v4l2m2m'),
          /// Enum containing hardware acceleration types.
      @JsonValue(r'vaapi')
      vaapi(r'vaapi'),
          /// Enum containing hardware acceleration types.
      @JsonValue(r'videotoolbox')
      videotoolbox(r'videotoolbox'),
          /// Enum containing hardware acceleration types.
      @JsonValue(r'rkmpp')
      rkmpp(r'rkmpp');

  const HardwareAccelerationType(this.value);

  final String value;

  @override
  String toString() => value;
}
