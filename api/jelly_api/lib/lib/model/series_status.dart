//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// The status of a series.
enum SeriesStatus {
          /// The status of a series.
      @JsonValue(r'Continuing')
      continuing(r'Continuing'),
          /// The status of a series.
      @JsonValue(r'Ended')
      ended(r'Ended'),
          /// The status of a series.
      @JsonValue(r'Unreleased')
      unreleased(r'Unreleased');

  const SeriesStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
