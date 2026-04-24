//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Media streaming protocol.  Lowercase for backwards compatibility.
enum MediaStreamProtocol {
          /// Media streaming protocol.  Lowercase for backwards compatibility.
      @JsonValue(r'http')
      http(r'http'),
          /// Media streaming protocol.  Lowercase for backwards compatibility.
      @JsonValue(r'hls')
      hls(r'hls');

  const MediaStreamProtocol(this.value);

  final String value;

  @override
  String toString() => value;
}
