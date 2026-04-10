//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum RatingType {
      @JsonValue(r'Score')
      score(r'Score'),
      @JsonValue(r'Likes')
      likes(r'Likes');

  const RatingType(this.value);

  final String value;

  @override
  String toString() => value;
}
