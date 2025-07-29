// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mechanism.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateMechanism _$builtIn = const UpdateMechanism._('builtIn');
const UpdateMechanism _$script = const UpdateMechanism._('script');
const UpdateMechanism _$external_ = const UpdateMechanism._('external_');
const UpdateMechanism _$apt = const UpdateMechanism._('apt');
const UpdateMechanism _$docker = const UpdateMechanism._('docker');

UpdateMechanism _$valueOf(String name) {
  switch (name) {
    case 'builtIn':
      return _$builtIn;
    case 'script':
      return _$script;
    case 'external_':
      return _$external_;
    case 'apt':
      return _$apt;
    case 'docker':
      return _$docker;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UpdateMechanism> _$values =
    BuiltSet<UpdateMechanism>(const <UpdateMechanism>[
  _$builtIn,
  _$script,
  _$external_,
  _$apt,
  _$docker,
]);

class _$UpdateMechanismMeta {
  const _$UpdateMechanismMeta();
  UpdateMechanism get builtIn => _$builtIn;
  UpdateMechanism get script => _$script;
  UpdateMechanism get external_ => _$external_;
  UpdateMechanism get apt => _$apt;
  UpdateMechanism get docker => _$docker;
  UpdateMechanism valueOf(String name) => _$valueOf(name);
  BuiltSet<UpdateMechanism> get values => _$values;
}

abstract class _$UpdateMechanismMixin {
  // ignore: non_constant_identifier_names
  _$UpdateMechanismMeta get UpdateMechanism => const _$UpdateMechanismMeta();
}

Serializer<UpdateMechanism> _$updateMechanismSerializer =
    _$UpdateMechanismSerializer();

class _$UpdateMechanismSerializer
    implements PrimitiveSerializer<UpdateMechanism> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'builtIn': 'builtIn',
    'script': 'script',
    'external_': 'external',
    'apt': 'apt',
    'docker': 'docker',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'builtIn': 'builtIn',
    'script': 'script',
    'external': 'external_',
    'apt': 'apt',
    'docker': 'docker',
  };

  @override
  final Iterable<Type> types = const <Type>[UpdateMechanism];
  @override
  final String wireName = 'UpdateMechanism';

  @override
  Object serialize(Serializers serializers, UpdateMechanism object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateMechanism deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateMechanism.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
