//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// An enum representing types of video ranges.
enum VideoRangeType {
          /// An enum representing types of video ranges.
      @JsonValue(r'Unknown')
      unknown(r'Unknown'),
          /// An enum representing types of video ranges.
      @JsonValue(r'SDR')
      SDR(r'SDR'),
          /// An enum representing types of video ranges.
      @JsonValue(r'HDR10')
      hDR10(r'HDR10'),
          /// An enum representing types of video ranges.
      @JsonValue(r'HLG')
      HLG(r'HLG'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVI')
      DOVI(r'DOVI'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVIWithHDR10')
      dOVIWithHDR10(r'DOVIWithHDR10'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVIWithHLG')
      dOVIWithHLG(r'DOVIWithHLG'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVIWithSDR')
      dOVIWithSDR(r'DOVIWithSDR'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVIWithEL')
      dOVIWithEL(r'DOVIWithEL'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVIWithHDR10Plus')
      dOVIWithHDR10Plus(r'DOVIWithHDR10Plus'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVIWithELHDR10Plus')
      dOVIWithELHDR10Plus(r'DOVIWithELHDR10Plus'),
          /// An enum representing types of video ranges.
      @JsonValue(r'DOVIInvalid')
      dOVIInvalid(r'DOVIInvalid'),
          /// An enum representing types of video ranges.
      @JsonValue(r'HDR10Plus')
      hDR10Plus(r'HDR10Plus');

  const VideoRangeType(this.value);

  final String value;

  @override
  String toString() => value;
}
