//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum AddMovieMethod {
      @JsonValue(r'manual')
      manual(r'manual'),
      @JsonValue(r'list')
      list(r'list'),
      @JsonValue(r'collection')
      collection(r'collection');

  const AddMovieMethod(this.value);

  final String value;

  @override
  String toString() => value;
}
