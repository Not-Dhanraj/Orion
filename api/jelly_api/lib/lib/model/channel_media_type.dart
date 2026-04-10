//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ChannelMediaType {
      @JsonValue(r'Audio')
      audio(r'Audio'),
      @JsonValue(r'Video')
      video(r'Video'),
      @JsonValue(r'Photo')
      photo(r'Photo');

  const ChannelMediaType(this.value);

  final String value;

  @override
  String toString() => value;
}
