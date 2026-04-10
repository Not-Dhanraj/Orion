//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum LocationType.
enum LocationType {
          /// Enum LocationType.
      @JsonValue(r'FileSystem')
      fileSystem(r'FileSystem'),
          /// Enum LocationType.
      @JsonValue(r'Remote')
      remote(r'Remote'),
          /// Enum LocationType.
      @JsonValue(r'Virtual')
      virtual(r'Virtual'),
          /// Enum LocationType.
      @JsonValue(r'Offline')
      offline(r'Offline');

  const LocationType(this.value);

  final String value;

  @override
  String toString() => value;
}
