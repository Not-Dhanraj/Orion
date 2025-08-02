// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proper_download_types.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProperDownloadTypes _$preferAndUpgrade =
    const ProperDownloadTypes._('preferAndUpgrade');
const ProperDownloadTypes _$doNotUpgrade =
    const ProperDownloadTypes._('doNotUpgrade');
const ProperDownloadTypes _$doNotPrefer =
    const ProperDownloadTypes._('doNotPrefer');

ProperDownloadTypes _$valueOf(String name) {
  switch (name) {
    case 'preferAndUpgrade':
      return _$preferAndUpgrade;
    case 'doNotUpgrade':
      return _$doNotUpgrade;
    case 'doNotPrefer':
      return _$doNotPrefer;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProperDownloadTypes> _$values =
    BuiltSet<ProperDownloadTypes>(const <ProperDownloadTypes>[
  _$preferAndUpgrade,
  _$doNotUpgrade,
  _$doNotPrefer,
]);

class _$ProperDownloadTypesMeta {
  const _$ProperDownloadTypesMeta();
  ProperDownloadTypes get preferAndUpgrade => _$preferAndUpgrade;
  ProperDownloadTypes get doNotUpgrade => _$doNotUpgrade;
  ProperDownloadTypes get doNotPrefer => _$doNotPrefer;
  ProperDownloadTypes valueOf(String name) => _$valueOf(name);
  BuiltSet<ProperDownloadTypes> get values => _$values;
}

abstract class _$ProperDownloadTypesMixin {
  // ignore: non_constant_identifier_names
  _$ProperDownloadTypesMeta get ProperDownloadTypes =>
      const _$ProperDownloadTypesMeta();
}

Serializer<ProperDownloadTypes> _$properDownloadTypesSerializer =
    _$ProperDownloadTypesSerializer();

class _$ProperDownloadTypesSerializer
    implements PrimitiveSerializer<ProperDownloadTypes> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'preferAndUpgrade': 'preferAndUpgrade',
    'doNotUpgrade': 'doNotUpgrade',
    'doNotPrefer': 'doNotPrefer',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'preferAndUpgrade': 'preferAndUpgrade',
    'doNotUpgrade': 'doNotUpgrade',
    'doNotPrefer': 'doNotPrefer',
  };

  @override
  final Iterable<Type> types = const <Type>[ProperDownloadTypes];
  @override
  final String wireName = 'ProperDownloadTypes';

  @override
  Object serialize(Serializers serializers, ProperDownloadTypes object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProperDownloadTypes deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProperDownloadTypes.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
