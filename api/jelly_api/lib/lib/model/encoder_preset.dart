//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum containing encoder presets.
enum EncoderPreset {
          /// Enum containing encoder presets.
      @JsonValue(r'auto')
      auto(r'auto'),
          /// Enum containing encoder presets.
      @JsonValue(r'placebo')
      placebo(r'placebo'),
          /// Enum containing encoder presets.
      @JsonValue(r'veryslow')
      veryslow(r'veryslow'),
          /// Enum containing encoder presets.
      @JsonValue(r'slower')
      slower(r'slower'),
          /// Enum containing encoder presets.
      @JsonValue(r'slow')
      slow(r'slow'),
          /// Enum containing encoder presets.
      @JsonValue(r'medium')
      medium(r'medium'),
          /// Enum containing encoder presets.
      @JsonValue(r'fast')
      fast(r'fast'),
          /// Enum containing encoder presets.
      @JsonValue(r'faster')
      faster(r'faster'),
          /// Enum containing encoder presets.
      @JsonValue(r'veryfast')
      veryfast(r'veryfast'),
          /// Enum containing encoder presets.
      @JsonValue(r'superfast')
      superfast(r'superfast'),
          /// Enum containing encoder presets.
      @JsonValue(r'ultrafast')
      ultrafast(r'ultrafast');

  const EncoderPreset(this.value);

  final String value;

  @override
  String toString() => value;
}
