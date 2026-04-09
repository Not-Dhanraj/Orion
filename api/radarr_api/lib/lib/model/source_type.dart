//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum SourceType {
      @JsonValue(r'tmdb')
      tmdb(r'tmdb'),
      @JsonValue(r'mappings')
      mappings(r'mappings'),
      @JsonValue(r'user')
      user(r'user'),
      @JsonValue(r'indexer')
      indexer(r'indexer');

  const SourceType(this.value);

  final String value;

  @override
  String toString() => value;
}
