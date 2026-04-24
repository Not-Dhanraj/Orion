// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_mapping_options_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChannelMappingOptionsDtoCWProxy {
  ChannelMappingOptionsDto tunerChannels(
    List<TunerChannelMapping>? tunerChannels,
  );

  ChannelMappingOptionsDto providerChannels(List<NameIdPair>? providerChannels);

  ChannelMappingOptionsDto mappings(List<NameValuePair>? mappings);

  ChannelMappingOptionsDto providerName(String? providerName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelMappingOptionsDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelMappingOptionsDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelMappingOptionsDto call({
    List<TunerChannelMapping>? tunerChannels,
    List<NameIdPair>? providerChannels,
    List<NameValuePair>? mappings,
    String? providerName,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChannelMappingOptionsDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChannelMappingOptionsDto.copyWith.fieldName(...)`
class _$ChannelMappingOptionsDtoCWProxyImpl
    implements _$ChannelMappingOptionsDtoCWProxy {
  const _$ChannelMappingOptionsDtoCWProxyImpl(this._value);

  final ChannelMappingOptionsDto _value;

  @override
  ChannelMappingOptionsDto tunerChannels(
    List<TunerChannelMapping>? tunerChannels,
  ) => this(tunerChannels: tunerChannels);

  @override
  ChannelMappingOptionsDto providerChannels(
    List<NameIdPair>? providerChannels,
  ) => this(providerChannels: providerChannels);

  @override
  ChannelMappingOptionsDto mappings(List<NameValuePair>? mappings) =>
      this(mappings: mappings);

  @override
  ChannelMappingOptionsDto providerName(String? providerName) =>
      this(providerName: providerName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChannelMappingOptionsDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChannelMappingOptionsDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ChannelMappingOptionsDto call({
    Object? tunerChannels = const $CopyWithPlaceholder(),
    Object? providerChannels = const $CopyWithPlaceholder(),
    Object? mappings = const $CopyWithPlaceholder(),
    Object? providerName = const $CopyWithPlaceholder(),
  }) {
    return ChannelMappingOptionsDto(
      tunerChannels: tunerChannels == const $CopyWithPlaceholder()
          ? _value.tunerChannels
          // ignore: cast_nullable_to_non_nullable
          : tunerChannels as List<TunerChannelMapping>?,
      providerChannels: providerChannels == const $CopyWithPlaceholder()
          ? _value.providerChannels
          // ignore: cast_nullable_to_non_nullable
          : providerChannels as List<NameIdPair>?,
      mappings: mappings == const $CopyWithPlaceholder()
          ? _value.mappings
          // ignore: cast_nullable_to_non_nullable
          : mappings as List<NameValuePair>?,
      providerName: providerName == const $CopyWithPlaceholder()
          ? _value.providerName
          // ignore: cast_nullable_to_non_nullable
          : providerName as String?,
    );
  }
}

extension $ChannelMappingOptionsDtoCopyWith on ChannelMappingOptionsDto {
  /// Returns a callable class that can be used as follows: `instanceOfChannelMappingOptionsDto.copyWith(...)` or like so:`instanceOfChannelMappingOptionsDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChannelMappingOptionsDtoCWProxy get copyWith =>
      _$ChannelMappingOptionsDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelMappingOptionsDto _$ChannelMappingOptionsDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ChannelMappingOptionsDto',
  json,
  ($checkedConvert) {
    final val = ChannelMappingOptionsDto(
      tunerChannels: $checkedConvert(
        'TunerChannels',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => TunerChannelMapping.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      providerChannels: $checkedConvert(
        'ProviderChannels',
        (v) => (v as List<dynamic>?)
            ?.map((e) => NameIdPair.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      mappings: $checkedConvert(
        'Mappings',
        (v) => (v as List<dynamic>?)
            ?.map((e) => NameValuePair.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      providerName: $checkedConvert('ProviderName', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'tunerChannels': 'TunerChannels',
    'providerChannels': 'ProviderChannels',
    'mappings': 'Mappings',
    'providerName': 'ProviderName',
  },
);

Map<String, dynamic> _$ChannelMappingOptionsDtoToJson(
  ChannelMappingOptionsDto instance,
) => <String, dynamic>{
  'TunerChannels': ?instance.tunerChannels?.map((e) => e.toJson()).toList(),
  'ProviderChannels': ?instance.providerChannels
      ?.map((e) => e.toJson())
      .toList(),
  'Mappings': ?instance.mappings?.map((e) => e.toJson()).toList(),
  'ProviderName': ?instance.providerName,
};
