//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum KeepUntil {
      @JsonValue(r'UntilDeleted')
      untilDeleted(r'UntilDeleted'),
      @JsonValue(r'UntilSpaceNeeded')
      untilSpaceNeeded(r'UntilSpaceNeeded'),
      @JsonValue(r'UntilWatched')
      untilWatched(r'UntilWatched'),
      @JsonValue(r'UntilDate')
      untilDate(r'UntilDate');

  const KeepUntil(this.value);

  final String value;

  @override
  String toString() => value;
}
