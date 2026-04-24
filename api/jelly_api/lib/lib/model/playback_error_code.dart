//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum PlaybackErrorCode {
      @JsonValue(r'NotAllowed')
      notAllowed(r'NotAllowed'),
      @JsonValue(r'NoCompatibleStream')
      noCompatibleStream(r'NoCompatibleStream'),
      @JsonValue(r'RateLimitExceeded')
      rateLimitExceeded(r'RateLimitExceeded');

  const PlaybackErrorCode(this.value);

  final String value;

  @override
  String toString() => value;
}
