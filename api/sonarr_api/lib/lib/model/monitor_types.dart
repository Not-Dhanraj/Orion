//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum MonitorTypes {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'all')
      all(r'all'),
      @JsonValue(r'future')
      future(r'future'),
      @JsonValue(r'missing')
      missing(r'missing'),
      @JsonValue(r'existing')
      existing(r'existing'),
      @JsonValue(r'firstSeason')
      firstSeason(r'firstSeason'),
      @JsonValue(r'lastSeason')
      lastSeason(r'lastSeason'),
      @JsonValue(r'latestSeason')
      latestSeason(r'latestSeason'),
      @JsonValue(r'pilot')
      pilot(r'pilot'),
      @JsonValue(r'recent')
      recent(r'recent'),
      @JsonValue(r'monitorSpecials')
      monitorSpecials(r'monitorSpecials'),
      @JsonValue(r'unmonitorSpecials')
      unmonitorSpecials(r'unmonitorSpecials'),
      @JsonValue(r'none')
      none(r'none'),
      @JsonValue(r'skip')
      skip(r'skip');

  const MonitorTypes(this.value);

  final String value;

  @override
  String toString() => value;
}
