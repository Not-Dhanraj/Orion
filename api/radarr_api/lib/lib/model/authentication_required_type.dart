//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum AuthenticationRequiredType {
      @JsonValue(r'enabled')
      enabled(r'enabled'),
      @JsonValue(r'disabledForLocalAddresses')
      disabledForLocalAddresses(r'disabledForLocalAddresses');

  const AuthenticationRequiredType(this.value);

  final String value;

  @override
  String toString() => value;
}
