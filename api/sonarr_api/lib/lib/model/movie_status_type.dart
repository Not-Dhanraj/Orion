//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum MovieStatusType {
      @JsonValue(r'tba')
      tba(r'tba'),
      @JsonValue(r'announced')
      announced(r'announced'),
      @JsonValue(r'inCinemas')
      inCinemas(r'inCinemas'),
      @JsonValue(r'released')
      released(r'released'),
      @JsonValue(r'deleted')
      deleted(r'deleted');

  const MovieStatusType(this.value);

  final String value;

  @override
  String toString() => value;
}
