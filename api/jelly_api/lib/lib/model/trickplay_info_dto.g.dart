// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trickplay_info_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TrickplayInfoDtoCWProxy {
  TrickplayInfoDto width(int? width);

  TrickplayInfoDto height(int? height);

  TrickplayInfoDto tileWidth(int? tileWidth);

  TrickplayInfoDto tileHeight(int? tileHeight);

  TrickplayInfoDto thumbnailCount(int? thumbnailCount);

  TrickplayInfoDto interval(int? interval);

  TrickplayInfoDto bandwidth(int? bandwidth);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TrickplayInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TrickplayInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  TrickplayInfoDto call({
    int? width,
    int? height,
    int? tileWidth,
    int? tileHeight,
    int? thumbnailCount,
    int? interval,
    int? bandwidth,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTrickplayInfoDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTrickplayInfoDto.copyWith.fieldName(...)`
class _$TrickplayInfoDtoCWProxyImpl implements _$TrickplayInfoDtoCWProxy {
  const _$TrickplayInfoDtoCWProxyImpl(this._value);

  final TrickplayInfoDto _value;

  @override
  TrickplayInfoDto width(int? width) => this(width: width);

  @override
  TrickplayInfoDto height(int? height) => this(height: height);

  @override
  TrickplayInfoDto tileWidth(int? tileWidth) => this(tileWidth: tileWidth);

  @override
  TrickplayInfoDto tileHeight(int? tileHeight) => this(tileHeight: tileHeight);

  @override
  TrickplayInfoDto thumbnailCount(int? thumbnailCount) =>
      this(thumbnailCount: thumbnailCount);

  @override
  TrickplayInfoDto interval(int? interval) => this(interval: interval);

  @override
  TrickplayInfoDto bandwidth(int? bandwidth) => this(bandwidth: bandwidth);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TrickplayInfoDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TrickplayInfoDto(...).copyWith(id: 12, name: "My name")
  /// ````
  TrickplayInfoDto call({
    Object? width = const $CopyWithPlaceholder(),
    Object? height = const $CopyWithPlaceholder(),
    Object? tileWidth = const $CopyWithPlaceholder(),
    Object? tileHeight = const $CopyWithPlaceholder(),
    Object? thumbnailCount = const $CopyWithPlaceholder(),
    Object? interval = const $CopyWithPlaceholder(),
    Object? bandwidth = const $CopyWithPlaceholder(),
  }) {
    return TrickplayInfoDto(
      width: width == const $CopyWithPlaceholder()
          ? _value.width
          // ignore: cast_nullable_to_non_nullable
          : width as int?,
      height: height == const $CopyWithPlaceholder()
          ? _value.height
          // ignore: cast_nullable_to_non_nullable
          : height as int?,
      tileWidth: tileWidth == const $CopyWithPlaceholder()
          ? _value.tileWidth
          // ignore: cast_nullable_to_non_nullable
          : tileWidth as int?,
      tileHeight: tileHeight == const $CopyWithPlaceholder()
          ? _value.tileHeight
          // ignore: cast_nullable_to_non_nullable
          : tileHeight as int?,
      thumbnailCount: thumbnailCount == const $CopyWithPlaceholder()
          ? _value.thumbnailCount
          // ignore: cast_nullable_to_non_nullable
          : thumbnailCount as int?,
      interval: interval == const $CopyWithPlaceholder()
          ? _value.interval
          // ignore: cast_nullable_to_non_nullable
          : interval as int?,
      bandwidth: bandwidth == const $CopyWithPlaceholder()
          ? _value.bandwidth
          // ignore: cast_nullable_to_non_nullable
          : bandwidth as int?,
    );
  }
}

extension $TrickplayInfoDtoCopyWith on TrickplayInfoDto {
  /// Returns a callable class that can be used as follows: `instanceOfTrickplayInfoDto.copyWith(...)` or like so:`instanceOfTrickplayInfoDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TrickplayInfoDtoCWProxy get copyWith => _$TrickplayInfoDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrickplayInfoDto _$TrickplayInfoDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TrickplayInfoDto',
      json,
      ($checkedConvert) {
        final val = TrickplayInfoDto(
          width: $checkedConvert('Width', (v) => (v as num?)?.toInt()),
          height: $checkedConvert('Height', (v) => (v as num?)?.toInt()),
          tileWidth: $checkedConvert('TileWidth', (v) => (v as num?)?.toInt()),
          tileHeight: $checkedConvert(
            'TileHeight',
            (v) => (v as num?)?.toInt(),
          ),
          thumbnailCount: $checkedConvert(
            'ThumbnailCount',
            (v) => (v as num?)?.toInt(),
          ),
          interval: $checkedConvert('Interval', (v) => (v as num?)?.toInt()),
          bandwidth: $checkedConvert('Bandwidth', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'width': 'Width',
        'height': 'Height',
        'tileWidth': 'TileWidth',
        'tileHeight': 'TileHeight',
        'thumbnailCount': 'ThumbnailCount',
        'interval': 'Interval',
        'bandwidth': 'Bandwidth',
      },
    );

Map<String, dynamic> _$TrickplayInfoDtoToJson(TrickplayInfoDto instance) =>
    <String, dynamic>{
      'Width': ?instance.width,
      'Height': ?instance.height,
      'TileWidth': ?instance.tileWidth,
      'TileHeight': ?instance.tileHeight,
      'ThumbnailCount': ?instance.thumbnailCount,
      'Interval': ?instance.interval,
      'Bandwidth': ?instance.bandwidth,
    };
