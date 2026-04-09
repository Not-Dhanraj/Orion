//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CertificateValidationType {
      @JsonValue(r'enabled')
      enabled(r'enabled'),
      @JsonValue(r'disabledForLocalAddresses')
      disabledForLocalAddresses(r'disabledForLocalAddresses'),
      @JsonValue(r'disabled')
      disabled(r'disabled');

  const CertificateValidationType(this.value);

  final String value;

  @override
  String toString() => value;
}
