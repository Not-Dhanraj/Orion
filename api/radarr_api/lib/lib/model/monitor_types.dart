//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum MonitorTypes {
      @JsonValue(r'movieOnly')
      movieOnly(r'movieOnly'),
      @JsonValue(r'movieAndCollection')
      movieAndCollection(r'movieAndCollection'),
      @JsonValue(r'none')
      none(r'none');

  const MonitorTypes(this.value);

  final String value;

  @override
  String toString() => value;
}
