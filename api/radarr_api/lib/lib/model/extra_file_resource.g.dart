// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_file_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ExtraFileResourceCWProxy {
  ExtraFileResource id(int? id);

  ExtraFileResource movieId(int? movieId);

  ExtraFileResource movieFileId(int? movieFileId);

  ExtraFileResource relativePath(String? relativePath);

  ExtraFileResource extension_(String? extension_);

  ExtraFileResource languageTags(List<String>? languageTags);

  ExtraFileResource title(String? title);

  ExtraFileResource type(ExtraFileType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExtraFileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExtraFileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ExtraFileResource call({
    int? id,
    int? movieId,
    int? movieFileId,
    String? relativePath,
    String? extension_,
    List<String>? languageTags,
    String? title,
    ExtraFileType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfExtraFileResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfExtraFileResource.copyWith.fieldName(...)`
class _$ExtraFileResourceCWProxyImpl implements _$ExtraFileResourceCWProxy {
  const _$ExtraFileResourceCWProxyImpl(this._value);

  final ExtraFileResource _value;

  @override
  ExtraFileResource id(int? id) => this(id: id);

  @override
  ExtraFileResource movieId(int? movieId) => this(movieId: movieId);

  @override
  ExtraFileResource movieFileId(int? movieFileId) =>
      this(movieFileId: movieFileId);

  @override
  ExtraFileResource relativePath(String? relativePath) =>
      this(relativePath: relativePath);

  @override
  ExtraFileResource extension_(String? extension_) =>
      this(extension_: extension_);

  @override
  ExtraFileResource languageTags(List<String>? languageTags) =>
      this(languageTags: languageTags);

  @override
  ExtraFileResource title(String? title) => this(title: title);

  @override
  ExtraFileResource type(ExtraFileType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExtraFileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExtraFileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ExtraFileResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? movieId = const $CopyWithPlaceholder(),
    Object? movieFileId = const $CopyWithPlaceholder(),
    Object? relativePath = const $CopyWithPlaceholder(),
    Object? extension_ = const $CopyWithPlaceholder(),
    Object? languageTags = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return ExtraFileResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      movieId: movieId == const $CopyWithPlaceholder()
          ? _value.movieId
          // ignore: cast_nullable_to_non_nullable
          : movieId as int?,
      movieFileId: movieFileId == const $CopyWithPlaceholder()
          ? _value.movieFileId
          // ignore: cast_nullable_to_non_nullable
          : movieFileId as int?,
      relativePath: relativePath == const $CopyWithPlaceholder()
          ? _value.relativePath
          // ignore: cast_nullable_to_non_nullable
          : relativePath as String?,
      extension_: extension_ == const $CopyWithPlaceholder()
          ? _value.extension_
          // ignore: cast_nullable_to_non_nullable
          : extension_ as String?,
      languageTags: languageTags == const $CopyWithPlaceholder()
          ? _value.languageTags
          // ignore: cast_nullable_to_non_nullable
          : languageTags as List<String>?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as ExtraFileType?,
    );
  }
}

extension $ExtraFileResourceCopyWith on ExtraFileResource {
  /// Returns a callable class that can be used as follows: `instanceOfExtraFileResource.copyWith(...)` or like so:`instanceOfExtraFileResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ExtraFileResourceCWProxy get copyWith =>
      _$ExtraFileResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtraFileResource _$ExtraFileResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ExtraFileResource', json, ($checkedConvert) {
      final val = ExtraFileResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        movieId: $checkedConvert('movieId', (v) => (v as num?)?.toInt()),
        movieFileId: $checkedConvert(
          'movieFileId',
          (v) => (v as num?)?.toInt(),
        ),
        relativePath: $checkedConvert('relativePath', (v) => v as String?),
        extension_: $checkedConvert('extension', (v) => v as String?),
        languageTags: $checkedConvert(
          'languageTags',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        title: $checkedConvert('title', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$ExtraFileTypeEnumMap, v),
        ),
      );
      return val;
    }, fieldKeyMap: const {'extension_': 'extension'});

Map<String, dynamic> _$ExtraFileResourceToJson(ExtraFileResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'movieId': ?instance.movieId,
      'movieFileId': ?instance.movieFileId,
      'relativePath': ?instance.relativePath,
      'extension': ?instance.extension_,
      'languageTags': ?instance.languageTags,
      'title': ?instance.title,
      'type': ?_$ExtraFileTypeEnumMap[instance.type],
    };

const _$ExtraFileTypeEnumMap = {
  ExtraFileType.subtitle: 'subtitle',
  ExtraFileType.metadata: 'metadata',
  ExtraFileType.other: 'other',
};
