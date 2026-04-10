// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuner_channel_mapping.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TunerChannelMappingCWProxy {
  TunerChannelMapping name(String? name);

  TunerChannelMapping providerChannelName(String? providerChannelName);

  TunerChannelMapping providerChannelId(String? providerChannelId);

  TunerChannelMapping id(String? id);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TunerChannelMapping(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TunerChannelMapping(...).copyWith(id: 12, name: "My name")
  /// ````
  TunerChannelMapping call({
    String? name,
    String? providerChannelName,
    String? providerChannelId,
    String? id,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTunerChannelMapping.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTunerChannelMapping.copyWith.fieldName(...)`
class _$TunerChannelMappingCWProxyImpl implements _$TunerChannelMappingCWProxy {
  const _$TunerChannelMappingCWProxyImpl(this._value);

  final TunerChannelMapping _value;

  @override
  TunerChannelMapping name(String? name) => this(name: name);

  @override
  TunerChannelMapping providerChannelName(String? providerChannelName) =>
      this(providerChannelName: providerChannelName);

  @override
  TunerChannelMapping providerChannelId(String? providerChannelId) =>
      this(providerChannelId: providerChannelId);

  @override
  TunerChannelMapping id(String? id) => this(id: id);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TunerChannelMapping(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TunerChannelMapping(...).copyWith(id: 12, name: "My name")
  /// ````
  TunerChannelMapping call({
    Object? name = const $CopyWithPlaceholder(),
    Object? providerChannelName = const $CopyWithPlaceholder(),
    Object? providerChannelId = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
  }) {
    return TunerChannelMapping(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      providerChannelName: providerChannelName == const $CopyWithPlaceholder()
          ? _value.providerChannelName
          // ignore: cast_nullable_to_non_nullable
          : providerChannelName as String?,
      providerChannelId: providerChannelId == const $CopyWithPlaceholder()
          ? _value.providerChannelId
          // ignore: cast_nullable_to_non_nullable
          : providerChannelId as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
    );
  }
}

extension $TunerChannelMappingCopyWith on TunerChannelMapping {
  /// Returns a callable class that can be used as follows: `instanceOfTunerChannelMapping.copyWith(...)` or like so:`instanceOfTunerChannelMapping.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TunerChannelMappingCWProxy get copyWith =>
      _$TunerChannelMappingCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TunerChannelMapping _$TunerChannelMappingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TunerChannelMapping',
      json,
      ($checkedConvert) {
        final val = TunerChannelMapping(
          name: $checkedConvert('Name', (v) => v as String?),
          providerChannelName: $checkedConvert(
            'ProviderChannelName',
            (v) => v as String?,
          ),
          providerChannelId: $checkedConvert(
            'ProviderChannelId',
            (v) => v as String?,
          ),
          id: $checkedConvert('Id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'Name',
        'providerChannelName': 'ProviderChannelName',
        'providerChannelId': 'ProviderChannelId',
        'id': 'Id',
      },
    );

Map<String, dynamic> _$TunerChannelMappingToJson(
  TunerChannelMapping instance,
) => <String, dynamic>{
  'Name': ?instance.name,
  'ProviderChannelName': ?instance.providerChannelName,
  'ProviderChannelId': ?instance.providerChannelId,
  'Id': ?instance.id,
};
