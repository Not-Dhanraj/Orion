//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ProxyType {
      @JsonValue(r'http')
      http(r'http'),
      @JsonValue(r'socks4')
      socks4(r'socks4'),
      @JsonValue(r'socks5')
      socks5(r'socks5');

  const ProxyType(this.value);

  final String value;

  @override
  String toString() => value;
}
