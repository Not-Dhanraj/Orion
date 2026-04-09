// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_option.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SelectOptionCWProxy {
  SelectOption value(int? value);

  SelectOption name(String? name);

  SelectOption order(int? order);

  SelectOption hint(String? hint);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SelectOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SelectOption(...).copyWith(id: 12, name: "My name")
  /// ````
  SelectOption call({int? value, String? name, int? order, String? hint});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSelectOption.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSelectOption.copyWith.fieldName(...)`
class _$SelectOptionCWProxyImpl implements _$SelectOptionCWProxy {
  const _$SelectOptionCWProxyImpl(this._value);

  final SelectOption _value;

  @override
  SelectOption value(int? value) => this(value: value);

  @override
  SelectOption name(String? name) => this(name: name);

  @override
  SelectOption order(int? order) => this(order: order);

  @override
  SelectOption hint(String? hint) => this(hint: hint);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SelectOption(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SelectOption(...).copyWith(id: 12, name: "My name")
  /// ````
  SelectOption call({
    Object? value = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? hint = const $CopyWithPlaceholder(),
  }) {
    return SelectOption(
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as int?,
      hint: hint == const $CopyWithPlaceholder()
          ? _value.hint
          // ignore: cast_nullable_to_non_nullable
          : hint as String?,
    );
  }
}

extension $SelectOptionCopyWith on SelectOption {
  /// Returns a callable class that can be used as follows: `instanceOfSelectOption.copyWith(...)` or like so:`instanceOfSelectOption.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SelectOptionCWProxy get copyWith => _$SelectOptionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectOption _$SelectOptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SelectOption', json, ($checkedConvert) {
      final val = SelectOption(
        value: $checkedConvert('value', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        order: $checkedConvert('order', (v) => (v as num?)?.toInt()),
        hint: $checkedConvert('hint', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SelectOptionToJson(SelectOption instance) =>
    <String, dynamic>{
      'value': ?instance.value,
      'name': ?instance.name,
      'order': ?instance.order,
      'hint': ?instance.hint,
    };
