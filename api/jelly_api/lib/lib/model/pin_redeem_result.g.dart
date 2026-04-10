// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_redeem_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PinRedeemResultCWProxy {
  PinRedeemResult success(bool? success);

  PinRedeemResult usersReset(List<String>? usersReset);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PinRedeemResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PinRedeemResult(...).copyWith(id: 12, name: "My name")
  /// ````
  PinRedeemResult call({bool? success, List<String>? usersReset});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPinRedeemResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPinRedeemResult.copyWith.fieldName(...)`
class _$PinRedeemResultCWProxyImpl implements _$PinRedeemResultCWProxy {
  const _$PinRedeemResultCWProxyImpl(this._value);

  final PinRedeemResult _value;

  @override
  PinRedeemResult success(bool? success) => this(success: success);

  @override
  PinRedeemResult usersReset(List<String>? usersReset) =>
      this(usersReset: usersReset);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PinRedeemResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PinRedeemResult(...).copyWith(id: 12, name: "My name")
  /// ````
  PinRedeemResult call({
    Object? success = const $CopyWithPlaceholder(),
    Object? usersReset = const $CopyWithPlaceholder(),
  }) {
    return PinRedeemResult(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      usersReset: usersReset == const $CopyWithPlaceholder()
          ? _value.usersReset
          // ignore: cast_nullable_to_non_nullable
          : usersReset as List<String>?,
    );
  }
}

extension $PinRedeemResultCopyWith on PinRedeemResult {
  /// Returns a callable class that can be used as follows: `instanceOfPinRedeemResult.copyWith(...)` or like so:`instanceOfPinRedeemResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PinRedeemResultCWProxy get copyWith => _$PinRedeemResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinRedeemResult _$PinRedeemResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PinRedeemResult',
      json,
      ($checkedConvert) {
        final val = PinRedeemResult(
          success: $checkedConvert('Success', (v) => v as bool?),
          usersReset: $checkedConvert(
            'UsersReset',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {'success': 'Success', 'usersReset': 'UsersReset'},
    );

Map<String, dynamic> _$PinRedeemResultToJson(PinRedeemResult instance) =>
    <String, dynamic>{
      'Success': ?instance.success,
      'UsersReset': ?instance.usersReset,
    };
