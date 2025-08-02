// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_check_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HealthCheckResult _$ok = const HealthCheckResult._('ok');
const HealthCheckResult _$notice = const HealthCheckResult._('notice');
const HealthCheckResult _$warning = const HealthCheckResult._('warning');
const HealthCheckResult _$error = const HealthCheckResult._('error');

HealthCheckResult _$valueOf(String name) {
  switch (name) {
    case 'ok':
      return _$ok;
    case 'notice':
      return _$notice;
    case 'warning':
      return _$warning;
    case 'error':
      return _$error;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<HealthCheckResult> _$values =
    BuiltSet<HealthCheckResult>(const <HealthCheckResult>[
  _$ok,
  _$notice,
  _$warning,
  _$error,
]);

class _$HealthCheckResultMeta {
  const _$HealthCheckResultMeta();
  HealthCheckResult get ok => _$ok;
  HealthCheckResult get notice => _$notice;
  HealthCheckResult get warning => _$warning;
  HealthCheckResult get error => _$error;
  HealthCheckResult valueOf(String name) => _$valueOf(name);
  BuiltSet<HealthCheckResult> get values => _$values;
}

abstract class _$HealthCheckResultMixin {
  // ignore: non_constant_identifier_names
  _$HealthCheckResultMeta get HealthCheckResult =>
      const _$HealthCheckResultMeta();
}

Serializer<HealthCheckResult> _$healthCheckResultSerializer =
    _$HealthCheckResultSerializer();

class _$HealthCheckResultSerializer
    implements PrimitiveSerializer<HealthCheckResult> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ok': 'ok',
    'notice': 'notice',
    'warning': 'warning',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ok': 'ok',
    'notice': 'notice',
    'warning': 'warning',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[HealthCheckResult];
  @override
  final String wireName = 'HealthCheckResult';

  @override
  Object serialize(Serializers serializers, HealthCheckResult object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HealthCheckResult deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HealthCheckResult.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
