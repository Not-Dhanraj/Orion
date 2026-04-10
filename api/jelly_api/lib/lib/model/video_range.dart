//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// An enum representing video ranges.
enum VideoRange {
          /// An enum representing video ranges.
      @JsonValue(r'Unknown')
      unknown(r'Unknown'),
          /// An enum representing video ranges.
      @JsonValue(r'SDR')
      SDR(r'SDR'),
          /// An enum representing video ranges.
      @JsonValue(r'HDR')
      HDR(r'HDR');

  const VideoRange(this.value);

  final String value;

  @override
  String toString() => value;
}
