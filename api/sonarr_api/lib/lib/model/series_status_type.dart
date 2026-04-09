//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum SeriesStatusType {
      @JsonValue(r'continuing')
      continuing(r'continuing'),
      @JsonValue(r'ended')
      ended(r'ended'),
      @JsonValue(r'upcoming')
      upcoming(r'upcoming'),
      @JsonValue(r'deleted')
      deleted(r'deleted');

  const SeriesStatusType(this.value);

  final String value;

  @override
  String toString() => value;
}
