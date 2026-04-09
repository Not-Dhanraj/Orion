// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quality.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QualityCWProxy {
  Quality id(int? id);

  Quality name(String? name);

  Quality source_(QualitySource? source_);

  Quality resolution(int? resolution);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Quality(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Quality(...).copyWith(id: 12, name: "My name")
  /// ````
  Quality call({
    int? id,
    String? name,
    QualitySource? source_,
    int? resolution,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQuality.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQuality.copyWith.fieldName(...)`
class _$QualityCWProxyImpl implements _$QualityCWProxy {
  const _$QualityCWProxyImpl(this._value);

  final Quality _value;

  @override
  Quality id(int? id) => this(id: id);

  @override
  Quality name(String? name) => this(name: name);

  @override
  Quality source_(QualitySource? source_) => this(source_: source_);

  @override
  Quality resolution(int? resolution) => this(resolution: resolution);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Quality(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Quality(...).copyWith(id: 12, name: "My name")
  /// ````
  Quality call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? source_ = const $CopyWithPlaceholder(),
    Object? resolution = const $CopyWithPlaceholder(),
  }) {
    return Quality(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      source_: source_ == const $CopyWithPlaceholder()
          ? _value.source_
          // ignore: cast_nullable_to_non_nullable
          : source_ as QualitySource?,
      resolution: resolution == const $CopyWithPlaceholder()
          ? _value.resolution
          // ignore: cast_nullable_to_non_nullable
          : resolution as int?,
    );
  }
}

extension $QualityCopyWith on Quality {
  /// Returns a callable class that can be used as follows: `instanceOfQuality.copyWith(...)` or like so:`instanceOfQuality.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QualityCWProxy get copyWith => _$QualityCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quality _$QualityFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Quality', json, ($checkedConvert) {
      final val = Quality(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        source_: $checkedConvert(
          'source',
          (v) => $enumDecodeNullable(_$QualitySourceEnumMap, v),
        ),
        resolution: $checkedConvert('resolution', (v) => (v as num?)?.toInt()),
      );
      return val;
    }, fieldKeyMap: const {'source_': 'source'});

Map<String, dynamic> _$QualityToJson(Quality instance) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'source': ?_$QualitySourceEnumMap[instance.source_],
  'resolution': ?instance.resolution,
};

const _$QualitySourceEnumMap = {
  QualitySource.unknown: 'unknown',
  QualitySource.television: 'television',
  QualitySource.televisionRaw: 'televisionRaw',
  QualitySource.web: 'web',
  QualitySource.webRip: 'webRip',
  QualitySource.dvd: 'dvd',
  QualitySource.bluray: 'bluray',
  QualitySource.blurayRaw: 'blurayRaw',
};
