// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_file_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExtraFileType _$subtitle = const ExtraFileType._('subtitle');
const ExtraFileType _$metadata = const ExtraFileType._('metadata');
const ExtraFileType _$other = const ExtraFileType._('other');

ExtraFileType _$valueOf(String name) {
  switch (name) {
    case 'subtitle':
      return _$subtitle;
    case 'metadata':
      return _$metadata;
    case 'other':
      return _$other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExtraFileType> _$values =
    BuiltSet<ExtraFileType>(const <ExtraFileType>[
  _$subtitle,
  _$metadata,
  _$other,
]);

class _$ExtraFileTypeMeta {
  const _$ExtraFileTypeMeta();
  ExtraFileType get subtitle => _$subtitle;
  ExtraFileType get metadata => _$metadata;
  ExtraFileType get other => _$other;
  ExtraFileType valueOf(String name) => _$valueOf(name);
  BuiltSet<ExtraFileType> get values => _$values;
}

abstract class _$ExtraFileTypeMixin {
  // ignore: non_constant_identifier_names
  _$ExtraFileTypeMeta get ExtraFileType => const _$ExtraFileTypeMeta();
}

Serializer<ExtraFileType> _$extraFileTypeSerializer =
    _$ExtraFileTypeSerializer();

class _$ExtraFileTypeSerializer implements PrimitiveSerializer<ExtraFileType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'subtitle': 'subtitle',
    'metadata': 'metadata',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'subtitle': 'subtitle',
    'metadata': 'metadata',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[ExtraFileType];
  @override
  final String wireName = 'ExtraFileType';

  @override
  Object serialize(Serializers serializers, ExtraFileType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExtraFileType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExtraFileType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
