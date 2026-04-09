//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum DownloadProtocol {
      @JsonValue(r'unknown')
      unknown(r'unknown'),
      @JsonValue(r'usenet')
      usenet(r'usenet'),
      @JsonValue(r'torrent')
      torrent(r'torrent');

  const DownloadProtocol(this.value);

  final String value;

  @override
  String toString() => value;
}
