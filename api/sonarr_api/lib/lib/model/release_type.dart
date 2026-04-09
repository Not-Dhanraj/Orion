//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ReleaseType {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'singleEpisode')
      singleEpisode(r'singleEpisode'),
      @JsonValue(r'multiEpisode')
      multiEpisode(r'multiEpisode'),
      @JsonValue(r'seasonPack')
      seasonPack(r'seasonPack');

  const ReleaseType(this.value);

  final String value;

  @override
  String toString() => value;
}
