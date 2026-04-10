//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum containing tonemapping modes.
enum TonemappingMode {
          /// Enum containing tonemapping modes.
      @JsonValue(r'auto')
      auto(r'auto'),
          /// Enum containing tonemapping modes.
      @JsonValue(r'max')
      max(r'max'),
          /// Enum containing tonemapping modes.
      @JsonValue(r'rgb')
      rgb(r'rgb'),
          /// Enum containing tonemapping modes.
      @JsonValue(r'lum')
      lum(r'lum'),
          /// Enum containing tonemapping modes.
      @JsonValue(r'itp')
      itp(r'itp');

  const TonemappingMode(this.value);

  final String value;

  @override
  String toString() => value;
}
