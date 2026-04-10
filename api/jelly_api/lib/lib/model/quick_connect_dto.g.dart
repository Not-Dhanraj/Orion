// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_connect_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QuickConnectDtoCWProxy {
  QuickConnectDto secret(String secret);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QuickConnectDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QuickConnectDto(...).copyWith(id: 12, name: "My name")
  /// ````
  QuickConnectDto call({String secret});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQuickConnectDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQuickConnectDto.copyWith.fieldName(...)`
class _$QuickConnectDtoCWProxyImpl implements _$QuickConnectDtoCWProxy {
  const _$QuickConnectDtoCWProxyImpl(this._value);

  final QuickConnectDto _value;

  @override
  QuickConnectDto secret(String secret) => this(secret: secret);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QuickConnectDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QuickConnectDto(...).copyWith(id: 12, name: "My name")
  /// ````
  QuickConnectDto call({Object? secret = const $CopyWithPlaceholder()}) {
    return QuickConnectDto(
      secret: secret == const $CopyWithPlaceholder()
          ? _value.secret
          // ignore: cast_nullable_to_non_nullable
          : secret as String,
    );
  }
}

extension $QuickConnectDtoCopyWith on QuickConnectDto {
  /// Returns a callable class that can be used as follows: `instanceOfQuickConnectDto.copyWith(...)` or like so:`instanceOfQuickConnectDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QuickConnectDtoCWProxy get copyWith => _$QuickConnectDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickConnectDto _$QuickConnectDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QuickConnectDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['Secret']);
      final val = QuickConnectDto(
        secret: $checkedConvert('Secret', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'secret': 'Secret'});

Map<String, dynamic> _$QuickConnectDtoToJson(QuickConnectDto instance) =>
    <String, dynamic>{'Secret': instance.secret};
