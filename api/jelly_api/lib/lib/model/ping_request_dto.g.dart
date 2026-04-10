// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ping_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PingRequestDtoCWProxy {
  PingRequestDto ping(int? ping);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PingRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PingRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PingRequestDto call({int? ping});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPingRequestDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPingRequestDto.copyWith.fieldName(...)`
class _$PingRequestDtoCWProxyImpl implements _$PingRequestDtoCWProxy {
  const _$PingRequestDtoCWProxyImpl(this._value);

  final PingRequestDto _value;

  @override
  PingRequestDto ping(int? ping) => this(ping: ping);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PingRequestDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PingRequestDto(...).copyWith(id: 12, name: "My name")
  /// ````
  PingRequestDto call({Object? ping = const $CopyWithPlaceholder()}) {
    return PingRequestDto(
      ping: ping == const $CopyWithPlaceholder()
          ? _value.ping
          // ignore: cast_nullable_to_non_nullable
          : ping as int?,
    );
  }
}

extension $PingRequestDtoCopyWith on PingRequestDto {
  /// Returns a callable class that can be used as follows: `instanceOfPingRequestDto.copyWith(...)` or like so:`instanceOfPingRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PingRequestDtoCWProxy get copyWith => _$PingRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PingRequestDto _$PingRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PingRequestDto', json, ($checkedConvert) {
      final val = PingRequestDto(
        ping: $checkedConvert('Ping', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'ping': 'Ping'});

Map<String, dynamic> _$PingRequestDtoToJson(PingRequestDto instance) =>
    <String, dynamic>{'Ping': ?instance.ping};
