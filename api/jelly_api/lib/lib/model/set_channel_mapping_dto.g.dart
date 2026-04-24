// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_channel_mapping_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SetChannelMappingDtoCWProxy {
  SetChannelMappingDto providerId(String providerId);

  SetChannelMappingDto tunerChannelId(String tunerChannelId);

  SetChannelMappingDto providerChannelId(String providerChannelId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetChannelMappingDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetChannelMappingDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetChannelMappingDto call({
    String providerId,
    String tunerChannelId,
    String providerChannelId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSetChannelMappingDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSetChannelMappingDto.copyWith.fieldName(...)`
class _$SetChannelMappingDtoCWProxyImpl
    implements _$SetChannelMappingDtoCWProxy {
  const _$SetChannelMappingDtoCWProxyImpl(this._value);

  final SetChannelMappingDto _value;

  @override
  SetChannelMappingDto providerId(String providerId) =>
      this(providerId: providerId);

  @override
  SetChannelMappingDto tunerChannelId(String tunerChannelId) =>
      this(tunerChannelId: tunerChannelId);

  @override
  SetChannelMappingDto providerChannelId(String providerChannelId) =>
      this(providerChannelId: providerChannelId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SetChannelMappingDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SetChannelMappingDto(...).copyWith(id: 12, name: "My name")
  /// ````
  SetChannelMappingDto call({
    Object? providerId = const $CopyWithPlaceholder(),
    Object? tunerChannelId = const $CopyWithPlaceholder(),
    Object? providerChannelId = const $CopyWithPlaceholder(),
  }) {
    return SetChannelMappingDto(
      providerId: providerId == const $CopyWithPlaceholder()
          ? _value.providerId
          // ignore: cast_nullable_to_non_nullable
          : providerId as String,
      tunerChannelId: tunerChannelId == const $CopyWithPlaceholder()
          ? _value.tunerChannelId
          // ignore: cast_nullable_to_non_nullable
          : tunerChannelId as String,
      providerChannelId: providerChannelId == const $CopyWithPlaceholder()
          ? _value.providerChannelId
          // ignore: cast_nullable_to_non_nullable
          : providerChannelId as String,
    );
  }
}

extension $SetChannelMappingDtoCopyWith on SetChannelMappingDto {
  /// Returns a callable class that can be used as follows: `instanceOfSetChannelMappingDto.copyWith(...)` or like so:`instanceOfSetChannelMappingDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SetChannelMappingDtoCWProxy get copyWith =>
      _$SetChannelMappingDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetChannelMappingDto _$SetChannelMappingDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SetChannelMappingDto',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['ProviderId', 'TunerChannelId', 'ProviderChannelId'],
    );
    final val = SetChannelMappingDto(
      providerId: $checkedConvert('ProviderId', (v) => v as String),
      tunerChannelId: $checkedConvert('TunerChannelId', (v) => v as String),
      providerChannelId: $checkedConvert(
        'ProviderChannelId',
        (v) => v as String,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'providerId': 'ProviderId',
    'tunerChannelId': 'TunerChannelId',
    'providerChannelId': 'ProviderChannelId',
  },
);

Map<String, dynamic> _$SetChannelMappingDtoToJson(
  SetChannelMappingDto instance,
) => <String, dynamic>{
  'ProviderId': instance.providerId,
  'TunerChannelId': instance.tunerChannelId,
  'ProviderChannelId': instance.providerChannelId,
};
