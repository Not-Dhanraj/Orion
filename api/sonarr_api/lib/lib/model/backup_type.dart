//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum BackupType {
      @JsonValue(r'scheduled')
      scheduled(r'scheduled'),
      @JsonValue(r'manual')
      manual(r'manual'),
      @JsonValue(r'update')
      update(r'update');

  const BackupType(this.value);

  final String value;

  @override
  String toString() => value;
}
