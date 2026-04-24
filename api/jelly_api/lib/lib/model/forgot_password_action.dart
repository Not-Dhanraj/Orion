//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ForgotPasswordAction {
      @JsonValue(r'ContactAdmin')
      contactAdmin(r'ContactAdmin'),
      @JsonValue(r'PinCode')
      pinCode(r'PinCode'),
      @JsonValue(r'InNetworkRequired')
      inNetworkRequired(r'InNetworkRequired');

  const ForgotPasswordAction(this.value);

  final String value;

  @override
  String toString() => value;
}
