// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_id_pair.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NameIdPairCWProxy {
  NameIdPair name(String? name);

  NameIdPair id(String? id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NameIdPair(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NameIdPair(...).copyWith(id: 12, name: "My name")
  /// ````
  NameIdPair call({String? name, String? id});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNameIdPair.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNameIdPair.copyWith.fieldName(...)`
class _$NameIdPairCWProxyImpl implements _$NameIdPairCWProxy {
  const _$NameIdPairCWProxyImpl(this._value);

  final NameIdPair _value;

  @override
  NameIdPair name(String? name) => this(name: name);

  @override
  NameIdPair id(String? id) => this(id: id);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NameIdPair(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NameIdPair(...).copyWith(id: 12, name: "My name")
  /// ````
  NameIdPair call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return NameIdPair(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
    );
  }
}

extension $NameIdPairCopyWith on NameIdPair {
  /// Returns a callable class that can be used as follows: `instanceOfNameIdPair.copyWith(...)` or like so:`instanceOfNameIdPair.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NameIdPairCWProxy get copyWith => _$NameIdPairCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameIdPair _$NameIdPairFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NameIdPair', json, ($checkedConvert) {
      final val = NameIdPair(
        name: $checkedConvert('Name', (v) => v as String?),
        id: $checkedConvert('Id', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'name': 'Name', 'id': 'Id'});

Map<String, dynamic> _$NameIdPairToJson(NameIdPair instance) =>
    <String, dynamic>{'Name': ?instance.name, 'Id': ?instance.id};
