// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_value_pair.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NameValuePairCWProxy {
  NameValuePair name(String? name);

  NameValuePair value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NameValuePair(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NameValuePair(...).copyWith(id: 12, name: "My name")
  /// ````
  NameValuePair call({String? name, String? value});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNameValuePair.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNameValuePair.copyWith.fieldName(...)`
class _$NameValuePairCWProxyImpl implements _$NameValuePairCWProxy {
  const _$NameValuePairCWProxyImpl(this._value);

  final NameValuePair _value;

  @override
  NameValuePair name(String? name) => this(name: name);

  @override
  NameValuePair value(String? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NameValuePair(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NameValuePair(...).copyWith(id: 12, name: "My name")
  /// ````
  NameValuePair call({
    Object? name = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return NameValuePair(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $NameValuePairCopyWith on NameValuePair {
  /// Returns a callable class that can be used as follows: `instanceOfNameValuePair.copyWith(...)` or like so:`instanceOfNameValuePair.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NameValuePairCWProxy get copyWith => _$NameValuePairCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameValuePair _$NameValuePairFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NameValuePair', json, ($checkedConvert) {
      final val = NameValuePair(
        name: $checkedConvert('Name', (v) => v as String?),
        value: $checkedConvert('Value', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'name': 'Name', 'value': 'Value'});

Map<String, dynamic> _$NameValuePairToJson(NameValuePair instance) =>
    <String, dynamic>{'Name': ?instance.name, 'Value': ?instance.value};
