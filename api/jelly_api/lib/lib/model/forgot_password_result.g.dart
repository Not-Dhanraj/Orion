// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ForgotPasswordResultCWProxy {
  ForgotPasswordResult action(ForgotPasswordAction? action);

  ForgotPasswordResult pinFile(String? pinFile);

  ForgotPasswordResult pinExpirationDate(DateTime? pinExpirationDate);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordResult(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordResult call({
    ForgotPasswordAction? action,
    String? pinFile,
    DateTime? pinExpirationDate,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfForgotPasswordResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfForgotPasswordResult.copyWith.fieldName(...)`
class _$ForgotPasswordResultCWProxyImpl
    implements _$ForgotPasswordResultCWProxy {
  const _$ForgotPasswordResultCWProxyImpl(this._value);

  final ForgotPasswordResult _value;

  @override
  ForgotPasswordResult action(ForgotPasswordAction? action) =>
      this(action: action);

  @override
  ForgotPasswordResult pinFile(String? pinFile) => this(pinFile: pinFile);

  @override
  ForgotPasswordResult pinExpirationDate(DateTime? pinExpirationDate) =>
      this(pinExpirationDate: pinExpirationDate);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPasswordResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPasswordResult(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPasswordResult call({
    Object? action = const $CopyWithPlaceholder(),
    Object? pinFile = const $CopyWithPlaceholder(),
    Object? pinExpirationDate = const $CopyWithPlaceholder(),
  }) {
    return ForgotPasswordResult(
      action: action == const $CopyWithPlaceholder()
          ? _value.action
          // ignore: cast_nullable_to_non_nullable
          : action as ForgotPasswordAction?,
      pinFile: pinFile == const $CopyWithPlaceholder()
          ? _value.pinFile
          // ignore: cast_nullable_to_non_nullable
          : pinFile as String?,
      pinExpirationDate: pinExpirationDate == const $CopyWithPlaceholder()
          ? _value.pinExpirationDate
          // ignore: cast_nullable_to_non_nullable
          : pinExpirationDate as DateTime?,
    );
  }
}

extension $ForgotPasswordResultCopyWith on ForgotPasswordResult {
  /// Returns a callable class that can be used as follows: `instanceOfForgotPasswordResult.copyWith(...)` or like so:`instanceOfForgotPasswordResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ForgotPasswordResultCWProxy get copyWith =>
      _$ForgotPasswordResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordResult _$ForgotPasswordResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ForgotPasswordResult',
  json,
  ($checkedConvert) {
    final val = ForgotPasswordResult(
      action: $checkedConvert(
        'Action',
        (v) => $enumDecodeNullable(_$ForgotPasswordActionEnumMap, v),
      ),
      pinFile: $checkedConvert('PinFile', (v) => v as String?),
      pinExpirationDate: $checkedConvert(
        'PinExpirationDate',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'action': 'Action',
    'pinFile': 'PinFile',
    'pinExpirationDate': 'PinExpirationDate',
  },
);

Map<String, dynamic> _$ForgotPasswordResultToJson(
  ForgotPasswordResult instance,
) => <String, dynamic>{
  'Action': ?_$ForgotPasswordActionEnumMap[instance.action],
  'PinFile': ?instance.pinFile,
  'PinExpirationDate': ?instance.pinExpirationDate?.toIso8601String(),
};

const _$ForgotPasswordActionEnumMap = {
  ForgotPasswordAction.contactAdmin: 'ContactAdmin',
  ForgotPasswordAction.pinCode: 'PinCode',
  ForgotPasswordAction.inNetworkRequired: 'InNetworkRequired',
};
