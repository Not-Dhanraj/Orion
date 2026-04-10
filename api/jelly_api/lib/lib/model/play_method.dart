//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum PlayMethod {
      @JsonValue(r'Transcode')
      transcode(r'Transcode'),
      @JsonValue(r'DirectStream')
      directStream(r'DirectStream'),
      @JsonValue(r'DirectPlay')
      directPlay(r'DirectPlay');

  const PlayMethod(this.value);

  final String value;

  @override
  String toString() => value;
}
