//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ImportListType {
      @JsonValue(r'program')
      program(r'program'),
      @JsonValue(r'tmdb')
      tmdb(r'tmdb'),
      @JsonValue(r'trakt')
      trakt(r'trakt'),
      @JsonValue(r'plex')
      plex(r'plex'),
      @JsonValue(r'simkl')
      simkl(r'simkl'),
      @JsonValue(r'other')
      other(r'other'),
      @JsonValue(r'advanced')
      advanced(r'advanced');

  const ImportListType(this.value);

  final String value;

  @override
  String toString() => value;
}
