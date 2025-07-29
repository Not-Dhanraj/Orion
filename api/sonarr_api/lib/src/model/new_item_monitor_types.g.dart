// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_item_monitor_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NewItemMonitorTypes _$all = const NewItemMonitorTypes._('all');
const NewItemMonitorTypes _$none = const NewItemMonitorTypes._('none');

NewItemMonitorTypes _$valueOf(String name) {
  switch (name) {
    case 'all':
      return _$all;
    case 'none':
      return _$none;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NewItemMonitorTypes> _$values =
    BuiltSet<NewItemMonitorTypes>(const <NewItemMonitorTypes>[
  _$all,
  _$none,
]);

class _$NewItemMonitorTypesMeta {
  const _$NewItemMonitorTypesMeta();
  NewItemMonitorTypes get all => _$all;
  NewItemMonitorTypes get none => _$none;
  NewItemMonitorTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<NewItemMonitorTypes> get values => _$values;
}

abstract class _$NewItemMonitorTypesMixin {
  // ignore: non_constant_identifier_names
  _$NewItemMonitorTypesMeta get NewItemMonitorTypes =>
      const _$NewItemMonitorTypesMeta();
}

Serializer<NewItemMonitorTypes> _$newItemMonitorTypesSerializer =
    _$NewItemMonitorTypesSerializer();

class _$NewItemMonitorTypesSerializer
    implements PrimitiveSerializer<NewItemMonitorTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'none': 'none',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'none': 'none',
  };

  @override
  final Iterable<Type> types = const <Type>[NewItemMonitorTypes];
  @override
  final String wireName = 'NewItemMonitorTypes';

  @override
  Object serialize(Serializers serializers, NewItemMonitorTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NewItemMonitorTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NewItemMonitorTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
