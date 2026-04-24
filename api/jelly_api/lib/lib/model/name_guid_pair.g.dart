// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_guid_pair.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NameGuidPairCWProxy {
  NameGuidPair name(String? name);

  NameGuidPair id(String? id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NameGuidPair(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NameGuidPair(...).copyWith(id: 12, name: "My name")
  /// ````
  NameGuidPair call({String? name, String? id});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNameGuidPair.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNameGuidPair.copyWith.fieldName(...)`
class _$NameGuidPairCWProxyImpl implements _$NameGuidPairCWProxy {
  const _$NameGuidPairCWProxyImpl(this._value);

  final NameGuidPair _value;

  @override
  NameGuidPair name(String? name) => this(name: name);

  @override
  NameGuidPair id(String? id) => this(id: id);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NameGuidPair(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NameGuidPair(...).copyWith(id: 12, name: "My name")
  /// ````
  NameGuidPair call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return NameGuidPair(
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

extension $NameGuidPairCopyWith on NameGuidPair {
  /// Returns a callable class that can be used as follows: `instanceOfNameGuidPair.copyWith(...)` or like so:`instanceOfNameGuidPair.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NameGuidPairCWProxy get copyWith => _$NameGuidPairCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameGuidPair _$NameGuidPairFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NameGuidPair', json, ($checkedConvert) {
      final val = NameGuidPair(
        name: $checkedConvert('Name', (v) => v as String?),
        id: $checkedConvert('Id', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'name': 'Name', 'id': 'Id'});

Map<String, dynamic> _$NameGuidPairToJson(NameGuidPair instance) =>
    <String, dynamic>{'Name': ?instance.name, 'Id': ?instance.id};
