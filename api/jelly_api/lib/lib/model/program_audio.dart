//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ProgramAudio {
      @JsonValue(r'Mono')
      mono(r'Mono'),
      @JsonValue(r'Stereo')
      stereo(r'Stereo'),
      @JsonValue(r'Dolby')
      dolby(r'Dolby'),
      @JsonValue(r'DolbyDigital')
      dolbyDigital(r'DolbyDigital'),
      @JsonValue(r'Thx')
      thx(r'Thx'),
      @JsonValue(r'Atmos')
      atmos(r'Atmos');

  const ProgramAudio(this.value);

  final String value;

  @override
  String toString() => value;
}
