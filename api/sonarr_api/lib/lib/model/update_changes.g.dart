// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_changes.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateChangesCWProxy {
  UpdateChanges new_(List<String>? new_);

  UpdateChanges fixed(List<String>? fixed);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateChanges(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateChanges(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateChanges call({List<String>? new_, List<String>? fixed});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateChanges.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateChanges.copyWith.fieldName(...)`
class _$UpdateChangesCWProxyImpl implements _$UpdateChangesCWProxy {
  const _$UpdateChangesCWProxyImpl(this._value);

  final UpdateChanges _value;

  @override
  UpdateChanges new_(List<String>? new_) => this(new_: new_);

  @override
  UpdateChanges fixed(List<String>? fixed) => this(fixed: fixed);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateChanges(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateChanges(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateChanges call({
    Object? new_ = const $CopyWithPlaceholder(),
    Object? fixed = const $CopyWithPlaceholder(),
  }) {
    return UpdateChanges(
      new_: new_ == const $CopyWithPlaceholder()
          ? _value.new_
          // ignore: cast_nullable_to_non_nullable
          : new_ as List<String>?,
      fixed: fixed == const $CopyWithPlaceholder()
          ? _value.fixed
          // ignore: cast_nullable_to_non_nullable
          : fixed as List<String>?,
    );
  }
}

extension $UpdateChangesCopyWith on UpdateChanges {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateChanges.copyWith(...)` or like so:`instanceOfUpdateChanges.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateChangesCWProxy get copyWith => _$UpdateChangesCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateChanges _$UpdateChangesFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateChanges', json, ($checkedConvert) {
      final val = UpdateChanges(
        new_: $checkedConvert(
          'new',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        fixed: $checkedConvert(
          'fixed',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'new_': 'new'});

Map<String, dynamic> _$UpdateChangesToJson(UpdateChanges instance) =>
    <String, dynamic>{'new': ?instance.new_, 'fixed': ?instance.fixed};
