//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ProviderMessageType {
      @JsonValue(r'info')
      info(r'info'),
      @JsonValue(r'warning')
      warning(r'warning'),
      @JsonValue(r'error')
      error(r'error');

  const ProviderMessageType(this.value);

  final String value;

  @override
  String toString() => value;
}
