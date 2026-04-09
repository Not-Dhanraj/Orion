//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CalendarReleaseType {
      @JsonValue(r'cinemaRelease')
      cinemaRelease(r'cinemaRelease'),
      @JsonValue(r'digitalRelease')
      digitalRelease(r'digitalRelease'),
      @JsonValue(r'physicalRelease')
      physicalRelease(r'physicalRelease');

  const CalendarReleaseType(this.value);

  final String value;

  @override
  String toString() => value;
}
