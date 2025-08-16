// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_date_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileDateType _$none = const FileDateType._('none');
const FileDateType _$cinemas = const FileDateType._('cinemas');
const FileDateType _$release = const FileDateType._('release');

FileDateType _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'cinemas':
      return _$cinemas;
    case 'release':
      return _$release;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileDateType> _$values =
    BuiltSet<FileDateType>(const <FileDateType>[
  _$none,
  _$cinemas,
  _$release,
]);

class _$FileDateTypeMeta {
  const _$FileDateTypeMeta();
  FileDateType get none => _$none;
  FileDateType get cinemas => _$cinemas;
  FileDateType get release => _$release;
  FileDateType valueOf(String name) => _$valueOf(name);
  BuiltSet<FileDateType> get values => _$values;
}

abstract class _$FileDateTypeMixin {
  // ignore: non_constant_identifier_names
  _$FileDateTypeMeta get FileDateType => const _$FileDateTypeMeta();
}

Serializer<FileDateType> _$fileDateTypeSerializer = _$FileDateTypeSerializer();

class _$FileDateTypeSerializer implements PrimitiveSerializer<FileDateType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'cinemas': 'cinemas',
    'release': 'release',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'cinemas': 'cinemas',
    'release': 'release',
  };

  @override
  final Iterable<Type> types = const <Type>[FileDateType];
  @override
  final String wireName = 'FileDateType';

  @override
  Object serialize(Serializers serializers, FileDateType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileDateType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileDateType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
