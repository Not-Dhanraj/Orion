// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProviderMessageCWProxy {
  ProviderMessage message(String? message);

  ProviderMessage type(ProviderMessageType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProviderMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProviderMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ProviderMessage call({String? message, ProviderMessageType? type});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProviderMessage.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProviderMessage.copyWith.fieldName(...)`
class _$ProviderMessageCWProxyImpl implements _$ProviderMessageCWProxy {
  const _$ProviderMessageCWProxyImpl(this._value);

  final ProviderMessage _value;

  @override
  ProviderMessage message(String? message) => this(message: message);

  @override
  ProviderMessage type(ProviderMessageType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProviderMessage(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProviderMessage(...).copyWith(id: 12, name: "My name")
  /// ````
  ProviderMessage call({
    Object? message = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return ProviderMessage(
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as ProviderMessageType?,
    );
  }
}

extension $ProviderMessageCopyWith on ProviderMessage {
  /// Returns a callable class that can be used as follows: `instanceOfProviderMessage.copyWith(...)` or like so:`instanceOfProviderMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProviderMessageCWProxy get copyWith => _$ProviderMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProviderMessage _$ProviderMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProviderMessage', json, ($checkedConvert) {
      final val = ProviderMessage(
        message: $checkedConvert('message', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$ProviderMessageTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProviderMessageToJson(ProviderMessage instance) =>
    <String, dynamic>{
      'message': ?instance.message,
      'type': ?_$ProviderMessageTypeEnumMap[instance.type],
    };

const _$ProviderMessageTypeEnumMap = {
  ProviderMessageType.info: 'info',
  ProviderMessageType.warning: 'warning',
  ProviderMessageType.error: 'error',
};
