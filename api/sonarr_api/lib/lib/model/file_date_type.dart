//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum FileDateType {
      @JsonValue(r'none')
      none(r'none'),
      @JsonValue(r'localAirDate')
      localAirDate(r'localAirDate'),
      @JsonValue(r'utcAirDate')
      utcAirDate(r'utcAirDate');

  const FileDateType(this.value);

  final String value;

  @override
  String toString() => value;
}
