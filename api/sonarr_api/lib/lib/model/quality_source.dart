//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum QualitySource {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'television')
      television(r'television'),
      @JsonValue(r'televisionRaw')
      televisionRaw(r'televisionRaw'),
      @JsonValue(r'web')
      web(r'web'),
      @JsonValue(r'webRip')
      webRip(r'webRip'),
      @JsonValue(r'dvd')
      dvd(r'dvd'),
      @JsonValue(r'bluray')
      bluray(r'bluray'),
      @JsonValue(r'blurayRaw')
      blurayRaw(r'blurayRaw');

  const QualitySource(this.value);

  final String value;

  @override
  String toString() => value;
}
