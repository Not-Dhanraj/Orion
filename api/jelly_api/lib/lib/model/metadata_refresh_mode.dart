//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum MetadataRefreshMode {
      @JsonValue(r'None')
      none(r'None'),
      @JsonValue(r'ValidationOnly')
      validationOnly(r'ValidationOnly'),
      @JsonValue(r'Default')
      default_(r'Default'),
      @JsonValue(r'FullRefresh')
      fullRefresh(r'FullRefresh');

  const MetadataRefreshMode(this.value);

  final String value;

  @override
  String toString() => value;
}
