// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rescan_after_refresh_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RescanAfterRefreshType _$always =
    const RescanAfterRefreshType._('always');
const RescanAfterRefreshType _$afterManual =
    const RescanAfterRefreshType._('afterManual');
const RescanAfterRefreshType _$never = const RescanAfterRefreshType._('never');

RescanAfterRefreshType _$valueOf(String name) {
  switch (name) {
    case 'always':
      return _$always;
    case 'afterManual':
      return _$afterManual;
    case 'never':
      return _$never;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RescanAfterRefreshType> _$values =
    BuiltSet<RescanAfterRefreshType>(const <RescanAfterRefreshType>[
  _$always,
  _$afterManual,
  _$never,
]);

class _$RescanAfterRefreshTypeMeta {
  const _$RescanAfterRefreshTypeMeta();
  RescanAfterRefreshType get always => _$always;
  RescanAfterRefreshType get afterManual => _$afterManual;
  RescanAfterRefreshType get never => _$never;
  RescanAfterRefreshType valueOf(String name) => _$valueOf(name);
  BuiltSet<RescanAfterRefreshType> get values => _$values;
}

abstract class _$RescanAfterRefreshTypeMixin {
  // ignore: non_constant_identifier_names
  _$RescanAfterRefreshTypeMeta get RescanAfterRefreshType =>
      const _$RescanAfterRefreshTypeMeta();
}

Serializer<RescanAfterRefreshType> _$rescanAfterRefreshTypeSerializer =
    _$RescanAfterRefreshTypeSerializer();

class _$RescanAfterRefreshTypeSerializer
    implements PrimitiveSerializer<RescanAfterRefreshType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'always': 'always',
    'afterManual': 'afterManual',
    'never': 'never',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'always': 'always',
    'afterManual': 'afterManual',
    'never': 'never',
  };

  @override
  final Iterable<Type> types = const <Type>[RescanAfterRefreshType];
  @override
  final String wireName = 'RescanAfterRefreshType';

  @override
  Object serialize(Serializers serializers, RescanAfterRefreshType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RescanAfterRefreshType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RescanAfterRefreshType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
