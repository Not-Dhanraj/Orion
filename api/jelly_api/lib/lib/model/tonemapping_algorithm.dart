//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum containing tonemapping algorithms.
enum TonemappingAlgorithm {
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'none')
      none(r'none'),
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'clip')
      clip(r'clip'),
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'linear')
      linear(r'linear'),
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'gamma')
      gamma(r'gamma'),
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'reinhard')
      reinhard(r'reinhard'),
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'hable')
      hable(r'hable'),
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'mobius')
      mobius(r'mobius'),
          /// Enum containing tonemapping algorithms.
      @JsonValue(r'bt2390')
      bt2390(r'bt2390');

  const TonemappingAlgorithm(this.value);

  final String value;

  @override
  String toString() => value;
}
