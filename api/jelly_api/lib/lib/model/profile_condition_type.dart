//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ProfileConditionType {
      @JsonValue(r'Equals')
      equals(r'Equals'),
      @JsonValue(r'NotEquals')
      notEquals(r'NotEquals'),
      @JsonValue(r'LessThanEqual')
      lessThanEqual(r'LessThanEqual'),
      @JsonValue(r'GreaterThanEqual')
      greaterThanEqual(r'GreaterThanEqual'),
      @JsonValue(r'EqualsAny')
      equalsAny(r'EqualsAny');

  const ProfileConditionType(this.value);

  final String value;

  @override
  String toString() => value;
}
