// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_option.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LocalizationOptionCWProxy {
  LocalizationOption name(String? name);

  LocalizationOption value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LocalizationOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LocalizationOption(...).copyWith(id: 12, name: "My name")
  /// ````
  LocalizationOption call({String? name, String? value});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLocalizationOption.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLocalizationOption.copyWith.fieldName(...)`
class _$LocalizationOptionCWProxyImpl implements _$LocalizationOptionCWProxy {
  const _$LocalizationOptionCWProxyImpl(this._value);

  final LocalizationOption _value;

  @override
  LocalizationOption name(String? name) => this(name: name);

  @override
  LocalizationOption value(String? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LocalizationOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LocalizationOption(...).copyWith(id: 12, name: "My name")
  /// ````
  LocalizationOption call({
    Object? name = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return LocalizationOption(
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

extension $LocalizationOptionCopyWith on LocalizationOption {
  /// Returns a callable class that can be used as follows: `instanceOfLocalizationOption.copyWith(...)` or like so:`instanceOfLocalizationOption.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LocalizationOptionCWProxy get copyWith =>
      _$LocalizationOptionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizationOption _$LocalizationOptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LocalizationOption', json, ($checkedConvert) {
      final val = LocalizationOption(
        name: $checkedConvert('Name', (v) => v as String?),
        value: $checkedConvert('Value', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'name': 'Name', 'value': 'Value'});

Map<String, dynamic> _$LocalizationOptionToJson(LocalizationOption instance) =>
    <String, dynamic>{'Name': ?instance.name, 'Value': ?instance.value};
