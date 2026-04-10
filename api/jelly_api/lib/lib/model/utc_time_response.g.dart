// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utc_time_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UtcTimeResponseCWProxy {
  UtcTimeResponse requestReceptionTime(DateTime? requestReceptionTime);

  UtcTimeResponse responseTransmissionTime(DateTime? responseTransmissionTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UtcTimeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UtcTimeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UtcTimeResponse call({
    DateTime? requestReceptionTime,
    DateTime? responseTransmissionTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUtcTimeResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUtcTimeResponse.copyWith.fieldName(...)`
class _$UtcTimeResponseCWProxyImpl implements _$UtcTimeResponseCWProxy {
  const _$UtcTimeResponseCWProxyImpl(this._value);

  final UtcTimeResponse _value;

  @override
  UtcTimeResponse requestReceptionTime(DateTime? requestReceptionTime) =>
      this(requestReceptionTime: requestReceptionTime);

  @override
  UtcTimeResponse responseTransmissionTime(
    DateTime? responseTransmissionTime,
  ) => this(responseTransmissionTime: responseTransmissionTime);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UtcTimeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UtcTimeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UtcTimeResponse call({
    Object? requestReceptionTime = const $CopyWithPlaceholder(),
    Object? responseTransmissionTime = const $CopyWithPlaceholder(),
  }) {
    return UtcTimeResponse(
      requestReceptionTime: requestReceptionTime == const $CopyWithPlaceholder()
          ? _value.requestReceptionTime
          // ignore: cast_nullable_to_non_nullable
          : requestReceptionTime as DateTime?,
      responseTransmissionTime:
          responseTransmissionTime == const $CopyWithPlaceholder()
          ? _value.responseTransmissionTime
          // ignore: cast_nullable_to_non_nullable
          : responseTransmissionTime as DateTime?,
    );
  }
}

extension $UtcTimeResponseCopyWith on UtcTimeResponse {
  /// Returns a callable class that can be used as follows: `instanceOfUtcTimeResponse.copyWith(...)` or like so:`instanceOfUtcTimeResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UtcTimeResponseCWProxy get copyWith => _$UtcTimeResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UtcTimeResponse _$UtcTimeResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UtcTimeResponse',
      json,
      ($checkedConvert) {
        final val = UtcTimeResponse(
          requestReceptionTime: $checkedConvert(
            'RequestReceptionTime',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          responseTransmissionTime: $checkedConvert(
            'ResponseTransmissionTime',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'requestReceptionTime': 'RequestReceptionTime',
        'responseTransmissionTime': 'ResponseTransmissionTime',
      },
    );

Map<String, dynamic> _$UtcTimeResponseToJson(UtcTimeResponse instance) =>
    <String, dynamic>{
      'RequestReceptionTime': ?instance.requestReceptionTime?.toIso8601String(),
      'ResponseTransmissionTime': ?instance.responseTransmissionTime
          ?.toIso8601String(),
    };
