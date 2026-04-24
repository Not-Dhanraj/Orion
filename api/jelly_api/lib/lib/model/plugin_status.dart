//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Plugin load status.
enum PluginStatus {
          /// Plugin load status.
      @JsonValue(r'Active')
      active(r'Active'),
          /// Plugin load status.
      @JsonValue(r'Restart')
      restart(r'Restart'),
          /// Plugin load status.
      @JsonValue(r'Deleted')
      deleted(r'Deleted'),
          /// Plugin load status.
      @JsonValue(r'Superseded')
      superseded(r'Superseded'),
          /// Plugin load status.
      @JsonValue(r'Superceded')
      superceded(r'Superceded'),
          /// Plugin load status.
      @JsonValue(r'Malfunctioned')
      malfunctioned(r'Malfunctioned'),
          /// Plugin load status.
      @JsonValue(r'NotSupported')
      notSupported(r'NotSupported'),
          /// Plugin load status.
      @JsonValue(r'Disabled')
      disabled(r'Disabled');

  const PluginStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
