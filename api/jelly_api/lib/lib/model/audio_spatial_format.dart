//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// An enum representing formats of spatial audio.
enum AudioSpatialFormat {
          /// An enum representing formats of spatial audio.
      @JsonValue(r'None')
      none(r'None'),
          /// An enum representing formats of spatial audio.
      @JsonValue(r'DolbyAtmos')
      dolbyAtmos(r'DolbyAtmos'),
          /// An enum representing formats of spatial audio.
      @JsonValue(r'DTSX')
      DTSX(r'DTSX');

  const AudioSpatialFormat(this.value);

  final String value;

  @override
  String toString() => value;
}
