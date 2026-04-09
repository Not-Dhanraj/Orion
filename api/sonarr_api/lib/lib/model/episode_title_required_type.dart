//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum EpisodeTitleRequiredType {
      @JsonValue(r'always')
      always(r'always'),
      @JsonValue(r'bulkSeasonReleases')
      bulkSeasonReleases(r'bulkSeasonReleases'),
      @JsonValue(r'never')
      never(r'never');

  const EpisodeTitleRequiredType(this.value);

  final String value;

  @override
  String toString() => value;
}
