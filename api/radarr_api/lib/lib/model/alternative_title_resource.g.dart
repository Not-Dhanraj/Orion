// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_title_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AlternativeTitleResourceCWProxy {
  AlternativeTitleResource id(int? id);

  AlternativeTitleResource sourceType(SourceType? sourceType);

  AlternativeTitleResource movieMetadataId(int? movieMetadataId);

  AlternativeTitleResource title(String? title);

  AlternativeTitleResource cleanTitle(String? cleanTitle);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AlternativeTitleResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AlternativeTitleResource(...).copyWith(id: 12, name: "My name")
  /// ````
  AlternativeTitleResource call({
    int? id,
    SourceType? sourceType,
    int? movieMetadataId,
    String? title,
    String? cleanTitle,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAlternativeTitleResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAlternativeTitleResource.copyWith.fieldName(...)`
class _$AlternativeTitleResourceCWProxyImpl
    implements _$AlternativeTitleResourceCWProxy {
  const _$AlternativeTitleResourceCWProxyImpl(this._value);

  final AlternativeTitleResource _value;

  @override
  AlternativeTitleResource id(int? id) => this(id: id);

  @override
  AlternativeTitleResource sourceType(SourceType? sourceType) =>
      this(sourceType: sourceType);

  @override
  AlternativeTitleResource movieMetadataId(int? movieMetadataId) =>
      this(movieMetadataId: movieMetadataId);

  @override
  AlternativeTitleResource title(String? title) => this(title: title);

  @override
  AlternativeTitleResource cleanTitle(String? cleanTitle) =>
      this(cleanTitle: cleanTitle);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AlternativeTitleResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AlternativeTitleResource(...).copyWith(id: 12, name: "My name")
  /// ````
  AlternativeTitleResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? sourceType = const $CopyWithPlaceholder(),
    Object? movieMetadataId = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? cleanTitle = const $CopyWithPlaceholder(),
  }) {
    return AlternativeTitleResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      sourceType: sourceType == const $CopyWithPlaceholder()
          ? _value.sourceType
          // ignore: cast_nullable_to_non_nullable
          : sourceType as SourceType?,
      movieMetadataId: movieMetadataId == const $CopyWithPlaceholder()
          ? _value.movieMetadataId
          // ignore: cast_nullable_to_non_nullable
          : movieMetadataId as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      cleanTitle: cleanTitle == const $CopyWithPlaceholder()
          ? _value.cleanTitle
          // ignore: cast_nullable_to_non_nullable
          : cleanTitle as String?,
    );
  }
}

extension $AlternativeTitleResourceCopyWith on AlternativeTitleResource {
  /// Returns a callable class that can be used as follows: `instanceOfAlternativeTitleResource.copyWith(...)` or like so:`instanceOfAlternativeTitleResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AlternativeTitleResourceCWProxy get copyWith =>
      _$AlternativeTitleResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlternativeTitleResource _$AlternativeTitleResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AlternativeTitleResource', json, ($checkedConvert) {
  final val = AlternativeTitleResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    sourceType: $checkedConvert(
      'sourceType',
      (v) => $enumDecodeNullable(_$SourceTypeEnumMap, v),
    ),
    movieMetadataId: $checkedConvert(
      'movieMetadataId',
      (v) => (v as num?)?.toInt(),
    ),
    title: $checkedConvert('title', (v) => v as String?),
    cleanTitle: $checkedConvert('cleanTitle', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AlternativeTitleResourceToJson(
  AlternativeTitleResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'sourceType': ?_$SourceTypeEnumMap[instance.sourceType],
  'movieMetadataId': ?instance.movieMetadataId,
  'title': ?instance.title,
  'cleanTitle': ?instance.cleanTitle,
};

const _$SourceTypeEnumMap = {
  SourceType.tmdb: 'tmdb',
  SourceType.mappings: 'mappings',
  SourceType.user: 'user',
  SourceType.indexer: 'indexer',
};
