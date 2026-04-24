//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Enum FileSystemEntryType.
enum FileSystemEntryType {
          /// Enum FileSystemEntryType.
      @JsonValue(r'File')
      file(r'File'),
          /// Enum FileSystemEntryType.
      @JsonValue(r'Directory')
      directory(r'Directory'),
          /// Enum FileSystemEntryType.
      @JsonValue(r'NetworkComputer')
      networkComputer(r'NetworkComputer'),
          /// Enum FileSystemEntryType.
      @JsonValue(r'NetworkShare')
      networkShare(r'NetworkShare');

  const FileSystemEntryType(this.value);

  final String value;

  @override
  String toString() => value;
}
