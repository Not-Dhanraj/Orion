// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_direction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SortDirection _$default_ = const SortDirection._('default_');
const SortDirection _$ascending = const SortDirection._('ascending');
const SortDirection _$descending = const SortDirection._('descending');

SortDirection _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'ascending':
      return _$ascending;
    case 'descending':
      return _$descending;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SortDirection> _$values =
    BuiltSet<SortDirection>(const <SortDirection>[
  _$default_,
  _$ascending,
  _$descending,
]);

class _$SortDirectionMeta {
  const _$SortDirectionMeta();
  SortDirection get default_ => _$default_;
  SortDirection get ascending => _$ascending;
  SortDirection get descending => _$descending;
  SortDirection valueOf(String name) => _$valueOf(name);
  BuiltSet<SortDirection> get values => _$values;
}

abstract class _$SortDirectionMixin {
  // ignore: non_constant_identifier_names
  _$SortDirectionMeta get SortDirection => const _$SortDirectionMeta();
}

Serializer<SortDirection> _$sortDirectionSerializer =
    _$SortDirectionSerializer();

class _$SortDirectionSerializer implements PrimitiveSerializer<SortDirection> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'ascending': 'ascending',
    'descending': 'descending',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'ascending': 'ascending',
    'descending': 'descending',
  };

  @override
  final Iterable<Type> types = const <Type>[SortDirection];
  @override
  final String wireName = 'SortDirection';

  @override
  Object serialize(Serializers serializers, SortDirection object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SortDirection deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SortDirection.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
