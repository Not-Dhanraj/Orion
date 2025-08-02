// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_tags.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApplyTags _$add = const ApplyTags._('add');
const ApplyTags _$remove = const ApplyTags._('remove');
const ApplyTags _$replace = const ApplyTags._('replace');

ApplyTags _$valueOf(String name) {
  switch (name) {
    case 'add':
      return _$add;
    case 'remove':
      return _$remove;
    case 'replace':
      return _$replace;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ApplyTags> _$values = BuiltSet<ApplyTags>(const <ApplyTags>[
  _$add,
  _$remove,
  _$replace,
]);

class _$ApplyTagsMeta {
  const _$ApplyTagsMeta();
  ApplyTags get add => _$add;
  ApplyTags get remove => _$remove;
  ApplyTags get replace => _$replace;
  ApplyTags valueOf(String name) => _$valueOf(name);
  BuiltSet<ApplyTags> get values => _$values;
}

abstract class _$ApplyTagsMixin {
  // ignore: non_constant_identifier_names
  _$ApplyTagsMeta get ApplyTags => const _$ApplyTagsMeta();
}

Serializer<ApplyTags> _$applyTagsSerializer = _$ApplyTagsSerializer();

class _$ApplyTagsSerializer implements PrimitiveSerializer<ApplyTags> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'add': 'add',
    'remove': 'remove',
    'replace': 'replace',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'add': 'add',
    'remove': 'remove',
    'replace': 'replace',
  };

  @override
  final Iterable<Type> types = const <Type>[ApplyTags];
  @override
  final String wireName = 'ApplyTags';

  @override
  Object serialize(Serializers serializers, ApplyTags object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ApplyTags deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ApplyTags.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
