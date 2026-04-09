//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum MovieHistoryEventType {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'grabbed')
      grabbed(r'grabbed'),
      @JsonValue(r'downloadFolderImported')
      downloadFolderImported(r'downloadFolderImported'),
      @JsonValue(r'downloadFailed')
      downloadFailed(r'downloadFailed'),
      @JsonValue(r'movieFileDeleted')
      movieFileDeleted(r'movieFileDeleted'),
      @JsonValue(r'movieFolderImported')
      movieFolderImported(r'movieFolderImported'),
      @JsonValue(r'movieFileRenamed')
      movieFileRenamed(r'movieFileRenamed'),
      @JsonValue(r'downloadIgnored')
      downloadIgnored(r'downloadIgnored');

  const MovieHistoryEventType(this.value);

  final String value;

  @override
  String toString() => value;
}
