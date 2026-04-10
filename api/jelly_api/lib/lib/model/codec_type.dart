//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CodecType {
      @JsonValue(r'Video')
      video(r'Video'),
      @JsonValue(r'VideoAudio')
      videoAudio(r'VideoAudio'),
      @JsonValue(r'Audio')
      audio(r'Audio');

  const CodecType(this.value);

  final String value;

  @override
  String toString() => value;
}
