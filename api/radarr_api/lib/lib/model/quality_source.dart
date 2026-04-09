//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum QualitySource {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'cam')
      cam(r'cam'),
      @JsonValue(r'telesync')
      telesync(r'telesync'),
      @JsonValue(r'telecine')
      telecine(r'telecine'),
      @JsonValue(r'workprint')
      workprint(r'workprint'),
      @JsonValue(r'dvd')
      dvd(r'dvd'),
      @JsonValue(r'tv')
      tv(r'tv'),
      @JsonValue(r'webdl')
      webdl(r'webdl'),
      @JsonValue(r'webrip')
      webrip(r'webrip'),
      @JsonValue(r'bluray')
      bluray(r'bluray');

  const QualitySource(this.value);

  final String value;

  @override
  String toString() => value;
}
