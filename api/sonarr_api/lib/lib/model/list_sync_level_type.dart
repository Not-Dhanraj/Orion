//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ListSyncLevelType {
      @JsonValue(r'disabled')
      disabled(r'disabled'),
      @JsonValue(r'logOnly')
      logOnly(r'logOnly'),
      @JsonValue(r'keepAndUnmonitor')
      keepAndUnmonitor(r'keepAndUnmonitor'),
      @JsonValue(r'keepAndTag')
      keepAndTag(r'keepAndTag');

  const ListSyncLevelType(this.value);

  final String value;

  @override
  String toString() => value;
}
