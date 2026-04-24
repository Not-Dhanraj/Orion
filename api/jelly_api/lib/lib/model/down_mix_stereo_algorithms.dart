//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// An enum representing an algorithm to downmix surround sound to stereo.
enum DownMixStereoAlgorithms {
          /// An enum representing an algorithm to downmix surround sound to stereo.
      @JsonValue(r'None')
      none(r'None'),
          /// An enum representing an algorithm to downmix surround sound to stereo.
      @JsonValue(r'Dave750')
      dave750(r'Dave750'),
          /// An enum representing an algorithm to downmix surround sound to stereo.
      @JsonValue(r'NightmodeDialogue')
      nightmodeDialogue(r'NightmodeDialogue'),
          /// An enum representing an algorithm to downmix surround sound to stereo.
      @JsonValue(r'Rfc7845')
      rfc7845(r'Rfc7845'),
          /// An enum representing an algorithm to downmix surround sound to stereo.
      @JsonValue(r'Ac4')
      ac4(r'Ac4');

  const DownMixStereoAlgorithms(this.value);

  final String value;

  @override
  String toString() => value;
}
