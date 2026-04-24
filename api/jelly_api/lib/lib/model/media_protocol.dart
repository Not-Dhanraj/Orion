//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum MediaProtocol {
      @JsonValue(r'File')
      file(r'File'),
      @JsonValue(r'Http')
      http(r'Http'),
      @JsonValue(r'Rtmp')
      rtmp(r'Rtmp'),
      @JsonValue(r'Rtsp')
      rtsp(r'Rtsp'),
      @JsonValue(r'Udp')
      udp(r'Udp'),
      @JsonValue(r'Rtp')
      rtp(r'Rtp'),
      @JsonValue(r'Ftp')
      ftp(r'Ftp');

  const MediaProtocol(this.value);

  final String value;

  @override
  String toString() => value;
}
