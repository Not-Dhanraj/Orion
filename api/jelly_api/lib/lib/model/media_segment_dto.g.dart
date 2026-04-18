// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_segment_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaSegmentDtoCWProxy {
  MediaSegmentDto id(String? id);

  MediaSegmentDto itemId(String? itemId);

  MediaSegmentDto type(MediaSegmentType? type);

  MediaSegmentDto startTicks(int? startTicks);

  MediaSegmentDto endTicks(int? endTicks);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaSegmentDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaSegmentDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaSegmentDto call({
    String? id,
    String? itemId,
    MediaSegmentType? type,
    int? startTicks,
    int? endTicks,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMediaSegmentDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMediaSegmentDto.copyWith.fieldName(...)`
class _$MediaSegmentDtoCWProxyImpl implements _$MediaSegmentDtoCWProxy {
  const _$MediaSegmentDtoCWProxyImpl(this._value);

  final MediaSegmentDto _value;

  @override
  MediaSegmentDto id(String? id) => this(id: id);

  @override
  MediaSegmentDto itemId(String? itemId) => this(itemId: itemId);

  @override
  MediaSegmentDto type(MediaSegmentType? type) => this(type: type);

  @override
  MediaSegmentDto startTicks(int? startTicks) => this(startTicks: startTicks);

  @override
  MediaSegmentDto endTicks(int? endTicks) => this(endTicks: endTicks);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MediaSegmentDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MediaSegmentDto(...).copyWith(id: 12, name: "My name")
  /// ````
  MediaSegmentDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? itemId = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? startTicks = const $CopyWithPlaceholder(),
    Object? endTicks = const $CopyWithPlaceholder(),
  }) {
    return MediaSegmentDto(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      itemId: itemId == const $CopyWithPlaceholder()
          ? _value.itemId
          // ignore: cast_nullable_to_non_nullable
          : itemId as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as MediaSegmentType?,
      startTicks: startTicks == const $CopyWithPlaceholder()
          ? _value.startTicks
          // ignore: cast_nullable_to_non_nullable
          : startTicks as int?,
      endTicks: endTicks == const $CopyWithPlaceholder()
          ? _value.endTicks
          // ignore: cast_nullable_to_non_nullable
          : endTicks as int?,
    );
  }
}

extension $MediaSegmentDtoCopyWith on MediaSegmentDto {
  /// Returns a callable class that can be used as follows: `instanceOfMediaSegmentDto.copyWith(...)` or like so:`instanceOfMediaSegmentDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaSegmentDtoCWProxy get copyWith => _$MediaSegmentDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaSegmentDto _$MediaSegmentDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MediaSegmentDto',
      json,
      ($checkedConvert) {
        final val = MediaSegmentDto(
          id: $checkedConvert('Id', (v) => v as String?),
          itemId: $checkedConvert('ItemId', (v) => v as String?),
          type: $checkedConvert(
            'Type',
            (v) =>
                $enumDecodeNullable(_$MediaSegmentTypeEnumMap, v) ??
                MediaSegmentType.unknown,
          ),
          startTicks: $checkedConvert(
            'StartTicks',
            (v) => (v as num?)?.toInt(),
          ),
          endTicks: $checkedConvert('EndTicks', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'id': 'Id',
        'itemId': 'ItemId',
        'type': 'Type',
        'startTicks': 'StartTicks',
        'endTicks': 'EndTicks',
      },
    );

Map<String, dynamic> _$MediaSegmentDtoToJson(MediaSegmentDto instance) =>
    <String, dynamic>{
      'Id': ?instance.id,
      'ItemId': ?instance.itemId,
      'Type': ?_$MediaSegmentTypeEnumMap[instance.type],
      'StartTicks': ?instance.startTicks,
      'EndTicks': ?instance.endTicks,
    };

const _$MediaSegmentTypeEnumMap = {
  MediaSegmentType.unknown: 'Unknown',
  MediaSegmentType.commercial: 'Commercial',
  MediaSegmentType.preview: 'Preview',
  MediaSegmentType.recap: 'Recap',
  MediaSegmentType.outro: 'Outro',
  MediaSegmentType.intro: 'Intro',
};
