// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_profile.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContainerProfileCWProxy {
  ContainerProfile type(DlnaProfileType? type);

  ContainerProfile conditions(List<ProfileCondition>? conditions);

  ContainerProfile container(String? container);

  ContainerProfile subContainer(String? subContainer);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ContainerProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ContainerProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  ContainerProfile call({
    DlnaProfileType? type,
    List<ProfileCondition>? conditions,
    String? container,
    String? subContainer,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfContainerProfile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfContainerProfile.copyWith.fieldName(...)`
class _$ContainerProfileCWProxyImpl implements _$ContainerProfileCWProxy {
  const _$ContainerProfileCWProxyImpl(this._value);

  final ContainerProfile _value;

  @override
  ContainerProfile type(DlnaProfileType? type) => this(type: type);

  @override
  ContainerProfile conditions(List<ProfileCondition>? conditions) =>
      this(conditions: conditions);

  @override
  ContainerProfile container(String? container) => this(container: container);

  @override
  ContainerProfile subContainer(String? subContainer) =>
      this(subContainer: subContainer);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ContainerProfile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ContainerProfile(...).copyWith(id: 12, name: "My name")
  /// ````
  ContainerProfile call({
    Object? type = const $CopyWithPlaceholder(),
    Object? conditions = const $CopyWithPlaceholder(),
    Object? container = const $CopyWithPlaceholder(),
    Object? subContainer = const $CopyWithPlaceholder(),
  }) {
    return ContainerProfile(
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as DlnaProfileType?,
      conditions: conditions == const $CopyWithPlaceholder()
          ? _value.conditions
          // ignore: cast_nullable_to_non_nullable
          : conditions as List<ProfileCondition>?,
      container: container == const $CopyWithPlaceholder()
          ? _value.container
          // ignore: cast_nullable_to_non_nullable
          : container as String?,
      subContainer: subContainer == const $CopyWithPlaceholder()
          ? _value.subContainer
          // ignore: cast_nullable_to_non_nullable
          : subContainer as String?,
    );
  }
}

extension $ContainerProfileCopyWith on ContainerProfile {
  /// Returns a callable class that can be used as follows: `instanceOfContainerProfile.copyWith(...)` or like so:`instanceOfContainerProfile.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ContainerProfileCWProxy get copyWith => _$ContainerProfileCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContainerProfile _$ContainerProfileFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ContainerProfile',
      json,
      ($checkedConvert) {
        final val = ContainerProfile(
          type: $checkedConvert(
            'Type',
            (v) => $enumDecodeNullable(_$DlnaProfileTypeEnumMap, v),
          ),
          conditions: $checkedConvert(
            'Conditions',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => ProfileCondition.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          container: $checkedConvert('Container', (v) => v as String?),
          subContainer: $checkedConvert('SubContainer', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'type': 'Type',
        'conditions': 'Conditions',
        'container': 'Container',
        'subContainer': 'SubContainer',
      },
    );

Map<String, dynamic> _$ContainerProfileToJson(ContainerProfile instance) =>
    <String, dynamic>{
      'Type': ?_$DlnaProfileTypeEnumMap[instance.type],
      'Conditions': ?instance.conditions?.map((e) => e.toJson()).toList(),
      'Container': ?instance.container,
      'SubContainer': ?instance.subContainer,
    };

const _$DlnaProfileTypeEnumMap = {
  DlnaProfileType.audio: 'Audio',
  DlnaProfileType.video: 'Video',
  DlnaProfileType.photo: 'Photo',
  DlnaProfileType.subtitle: 'Subtitle',
  DlnaProfileType.lyric: 'Lyric',
};
