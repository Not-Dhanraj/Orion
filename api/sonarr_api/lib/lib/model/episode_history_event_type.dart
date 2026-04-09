//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum EpisodeHistoryEventType {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'grabbed')
      grabbed(r'grabbed'),
      @JsonValue(r'seriesFolderImported')
      seriesFolderImported(r'seriesFolderImported'),
      @JsonValue(r'downloadFolderImported')
      downloadFolderImported(r'downloadFolderImported'),
      @JsonValue(r'downloadFailed')
      downloadFailed(r'downloadFailed'),
      @JsonValue(r'episodeFileDeleted')
      episodeFileDeleted(r'episodeFileDeleted'),
      @JsonValue(r'episodeFileRenamed')
      episodeFileRenamed(r'episodeFileRenamed'),
      @JsonValue(r'downloadIgnored')
      downloadIgnored(r'downloadIgnored');

  const EpisodeHistoryEventType(this.value);

  final String value;

  @override
  String toString() => value;
}
