//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_check_result.g.dart';

class HealthCheckResult extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ok')
  static const HealthCheckResult ok = _$ok;
  @BuiltValueEnumConst(wireName: r'notice')
  static const HealthCheckResult notice = _$notice;
  @BuiltValueEnumConst(wireName: r'warning')
  static const HealthCheckResult warning = _$warning;
  @BuiltValueEnumConst(wireName: r'error')
  static const HealthCheckResult error = _$error;

  static Serializer<HealthCheckResult> get serializer =>
      _$healthCheckResultSerializer;

  const HealthCheckResult._(String name) : super(name);

  static BuiltSet<HealthCheckResult> get values => _$values;
  static HealthCheckResult valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class HealthCheckResultMixin = Object with _$HealthCheckResultMixin;
