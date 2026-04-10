//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Delivery method to use during playback of a specific subtitle format.
enum SubtitleDeliveryMethod {
          /// Delivery method to use during playback of a specific subtitle format.
      @JsonValue(r'Encode')
      encode(r'Encode'),
          /// Delivery method to use during playback of a specific subtitle format.
      @JsonValue(r'Embed')
      embed(r'Embed'),
          /// Delivery method to use during playback of a specific subtitle format.
      @JsonValue(r'External')
      external_(r'External'),
          /// Delivery method to use during playback of a specific subtitle format.
      @JsonValue(r'Hls')
      hls(r'Hls'),
          /// Delivery method to use during playback of a specific subtitle format.
      @JsonValue(r'Drop')
      drop(r'Drop');

  const SubtitleDeliveryMethod(this.value);

  final String value;

  @override
  String toString() => value;
}
