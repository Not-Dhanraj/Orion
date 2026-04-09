//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum RatingType {
      @JsonValue(r'user')
      user(r'user'),
      @JsonValue(r'critic')
      critic(r'critic');

  const RatingType(this.value);

  final String value;

  @override
  String toString() => value;
}
