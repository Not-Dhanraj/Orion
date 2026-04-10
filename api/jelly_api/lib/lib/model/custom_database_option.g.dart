// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_database_option.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomDatabaseOptionCWProxy {
  CustomDatabaseOption key(String? key);

  CustomDatabaseOption value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomDatabaseOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomDatabaseOption(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomDatabaseOption call({String? key, String? value});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomDatabaseOption.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomDatabaseOption.copyWith.fieldName(...)`
class _$CustomDatabaseOptionCWProxyImpl
    implements _$CustomDatabaseOptionCWProxy {
  const _$CustomDatabaseOptionCWProxyImpl(this._value);

  final CustomDatabaseOption _value;

  @override
  CustomDatabaseOption key(String? key) => this(key: key);

  @override
  CustomDatabaseOption value(String? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomDatabaseOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomDatabaseOption(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomDatabaseOption call({
    Object? key = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return CustomDatabaseOption(
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $CustomDatabaseOptionCopyWith on CustomDatabaseOption {
  /// Returns a callable class that can be used as follows: `instanceOfCustomDatabaseOption.copyWith(...)` or like so:`instanceOfCustomDatabaseOption.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomDatabaseOptionCWProxy get copyWith =>
      _$CustomDatabaseOptionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomDatabaseOption _$CustomDatabaseOptionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomDatabaseOption', json, ($checkedConvert) {
  final val = CustomDatabaseOption(
    key: $checkedConvert('Key', (v) => v as String?),
    value: $checkedConvert('Value', (v) => v as String?),
  );
  return val;
}, fieldKeyMap: const {'key': 'Key', 'value': 'Value'});

Map<String, dynamic> _$CustomDatabaseOptionToJson(
  CustomDatabaseOption instance,
) => <String, dynamic>{'Key': ?instance.key, 'Value': ?instance.value};
