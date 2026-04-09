//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum Modifier {
      @JsonValue(r'none')
      none(r'none'),
      @JsonValue(r'regional')
      regional(r'regional'),
      @JsonValue(r'screener')
      screener(r'screener'),
      @JsonValue(r'rawhd')
      rawhd(r'rawhd'),
      @JsonValue(r'brdisk')
      brdisk(r'brdisk'),
      @JsonValue(r'remux')
      remux(r'remux');

  const Modifier(this.value);

  final String value;

  @override
  String toString() => value;
}
