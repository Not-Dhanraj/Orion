// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_condition.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileConditionCWProxy {
  ProfileCondition condition(ProfileConditionType? condition);

  ProfileCondition property(ProfileConditionValue? property);

  ProfileCondition value(String? value);

  ProfileCondition isRequired(bool? isRequired);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileCondition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileCondition(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileCondition call({
    ProfileConditionType? condition,
    ProfileConditionValue? property,
    String? value,
    bool? isRequired,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProfileCondition.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProfileCondition.copyWith.fieldName(...)`
class _$ProfileConditionCWProxyImpl implements _$ProfileConditionCWProxy {
  const _$ProfileConditionCWProxyImpl(this._value);

  final ProfileCondition _value;

  @override
  ProfileCondition condition(ProfileConditionType? condition) =>
      this(condition: condition);

  @override
  ProfileCondition property(ProfileConditionValue? property) =>
      this(property: property);

  @override
  ProfileCondition value(String? value) => this(value: value);

  @override
  ProfileCondition isRequired(bool? isRequired) => this(isRequired: isRequired);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileCondition(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileCondition(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileCondition call({
    Object? condition = const $CopyWithPlaceholder(),
    Object? property = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? isRequired = const $CopyWithPlaceholder(),
  }) {
    return ProfileCondition(
      condition: condition == const $CopyWithPlaceholder()
          ? _value.condition
          // ignore: cast_nullable_to_non_nullable
          : condition as ProfileConditionType?,
      property: property == const $CopyWithPlaceholder()
          ? _value.property
          // ignore: cast_nullable_to_non_nullable
          : property as ProfileConditionValue?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
      isRequired: isRequired == const $CopyWithPlaceholder()
          ? _value.isRequired
          // ignore: cast_nullable_to_non_nullable
          : isRequired as bool?,
    );
  }
}

extension $ProfileConditionCopyWith on ProfileCondition {
  /// Returns a callable class that can be used as follows: `instanceOfProfileCondition.copyWith(...)` or like so:`instanceOfProfileCondition.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileConditionCWProxy get copyWith => _$ProfileConditionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileCondition _$ProfileConditionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProfileCondition',
      json,
      ($checkedConvert) {
        final val = ProfileCondition(
          condition: $checkedConvert(
            'Condition',
            (v) => $enumDecodeNullable(_$ProfileConditionTypeEnumMap, v),
          ),
          property: $checkedConvert(
            'Property',
            (v) => $enumDecodeNullable(_$ProfileConditionValueEnumMap, v),
          ),
          value: $checkedConvert('Value', (v) => v as String?),
          isRequired: $checkedConvert('IsRequired', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'condition': 'Condition',
        'property': 'Property',
        'value': 'Value',
        'isRequired': 'IsRequired',
      },
    );

Map<String, dynamic> _$ProfileConditionToJson(ProfileCondition instance) =>
    <String, dynamic>{
      'Condition': ?_$ProfileConditionTypeEnumMap[instance.condition],
      'Property': ?_$ProfileConditionValueEnumMap[instance.property],
      'Value': ?instance.value,
      'IsRequired': ?instance.isRequired,
    };

const _$ProfileConditionTypeEnumMap = {
  ProfileConditionType.equals: 'Equals',
  ProfileConditionType.notEquals: 'NotEquals',
  ProfileConditionType.lessThanEqual: 'LessThanEqual',
  ProfileConditionType.greaterThanEqual: 'GreaterThanEqual',
  ProfileConditionType.equalsAny: 'EqualsAny',
};

const _$ProfileConditionValueEnumMap = {
  ProfileConditionValue.audioChannels: 'AudioChannels',
  ProfileConditionValue.audioBitrate: 'AudioBitrate',
  ProfileConditionValue.audioProfile: 'AudioProfile',
  ProfileConditionValue.width: 'Width',
  ProfileConditionValue.height: 'Height',
  ProfileConditionValue.has64BitOffsets: 'Has64BitOffsets',
  ProfileConditionValue.packetLength: 'PacketLength',
  ProfileConditionValue.videoBitDepth: 'VideoBitDepth',
  ProfileConditionValue.videoBitrate: 'VideoBitrate',
  ProfileConditionValue.videoFramerate: 'VideoFramerate',
  ProfileConditionValue.videoLevel: 'VideoLevel',
  ProfileConditionValue.videoProfile: 'VideoProfile',
  ProfileConditionValue.videoTimestamp: 'VideoTimestamp',
  ProfileConditionValue.isAnamorphic: 'IsAnamorphic',
  ProfileConditionValue.refFrames: 'RefFrames',
  ProfileConditionValue.numAudioStreams: 'NumAudioStreams',
  ProfileConditionValue.numVideoStreams: 'NumVideoStreams',
  ProfileConditionValue.isSecondaryAudio: 'IsSecondaryAudio',
  ProfileConditionValue.videoCodecTag: 'VideoCodecTag',
  ProfileConditionValue.isAvc: 'IsAvc',
  ProfileConditionValue.isInterlaced: 'IsInterlaced',
  ProfileConditionValue.audioSampleRate: 'AudioSampleRate',
  ProfileConditionValue.audioBitDepth: 'AudioBitDepth',
  ProfileConditionValue.videoRangeType: 'VideoRangeType',
  ProfileConditionValue.numStreams: 'NumStreams',
};
