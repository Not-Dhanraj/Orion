//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum MediaCoverTypes {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'poster')
      poster(r'poster'),
      @JsonValue(r'banner')
      banner(r'banner'),
      @JsonValue(r'fanart')
      fanart(r'fanart'),
      @JsonValue(r'screenshot')
      screenshot(r'screenshot'),
      @JsonValue(r'headshot')
      headshot(r'headshot'),
      @JsonValue(r'clearlogo')
      clearlogo(r'clearlogo');

  const MediaCoverTypes(this.value);

  final String value;

  @override
  String toString() => value;
}
