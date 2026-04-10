// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChapterInfoCWProxy {
  ChapterInfo startPositionTicks(int? startPositionTicks);

  ChapterInfo name(String? name);

  ChapterInfo imagePath(String? imagePath);

  ChapterInfo imageDateModified(DateTime? imageDateModified);

  ChapterInfo imageTag(String? imageTag);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChapterInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChapterInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ChapterInfo call({
    int? startPositionTicks,
    String? name,
    String? imagePath,
    DateTime? imageDateModified,
    String? imageTag,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChapterInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChapterInfo.copyWith.fieldName(...)`
class _$ChapterInfoCWProxyImpl implements _$ChapterInfoCWProxy {
  const _$ChapterInfoCWProxyImpl(this._value);

  final ChapterInfo _value;

  @override
  ChapterInfo startPositionTicks(int? startPositionTicks) =>
      this(startPositionTicks: startPositionTicks);

  @override
  ChapterInfo name(String? name) => this(name: name);

  @override
  ChapterInfo imagePath(String? imagePath) => this(imagePath: imagePath);

  @override
  ChapterInfo imageDateModified(DateTime? imageDateModified) =>
      this(imageDateModified: imageDateModified);

  @override
  ChapterInfo imageTag(String? imageTag) => this(imageTag: imageTag);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChapterInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChapterInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ChapterInfo call({
    Object? startPositionTicks = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? imagePath = const $CopyWithPlaceholder(),
    Object? imageDateModified = const $CopyWithPlaceholder(),
    Object? imageTag = const $CopyWithPlaceholder(),
  }) {
    return ChapterInfo(
      startPositionTicks: startPositionTicks == const $CopyWithPlaceholder()
          ? _value.startPositionTicks
          // ignore: cast_nullable_to_non_nullable
          : startPositionTicks as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      imagePath: imagePath == const $CopyWithPlaceholder()
          ? _value.imagePath
          // ignore: cast_nullable_to_non_nullable
          : imagePath as String?,
      imageDateModified: imageDateModified == const $CopyWithPlaceholder()
          ? _value.imageDateModified
          // ignore: cast_nullable_to_non_nullable
          : imageDateModified as DateTime?,
      imageTag: imageTag == const $CopyWithPlaceholder()
          ? _value.imageTag
          // ignore: cast_nullable_to_non_nullable
          : imageTag as String?,
    );
  }
}

extension $ChapterInfoCopyWith on ChapterInfo {
  /// Returns a callable class that can be used as follows: `instanceOfChapterInfo.copyWith(...)` or like so:`instanceOfChapterInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChapterInfoCWProxy get copyWith => _$ChapterInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterInfo _$ChapterInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'ChapterInfo',
  json,
  ($checkedConvert) {
    final val = ChapterInfo(
      startPositionTicks: $checkedConvert(
        'StartPositionTicks',
        (v) => (v as num?)?.toInt(),
      ),
      name: $checkedConvert('Name', (v) => v as String?),
      imagePath: $checkedConvert('ImagePath', (v) => v as String?),
      imageDateModified: $checkedConvert(
        'ImageDateModified',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      imageTag: $checkedConvert('ImageTag', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'startPositionTicks': 'StartPositionTicks',
    'name': 'Name',
    'imagePath': 'ImagePath',
    'imageDateModified': 'ImageDateModified',
    'imageTag': 'ImageTag',
  },
);

Map<String, dynamic> _$ChapterInfoToJson(ChapterInfo instance) =>
    <String, dynamic>{
      'StartPositionTicks': ?instance.startPositionTicks,
      'Name': ?instance.name,
      'ImagePath': ?instance.imagePath,
      'ImageDateModified': ?instance.imageDateModified?.toIso8601String(),
      'ImageTag': ?instance.imageTag,
    };
