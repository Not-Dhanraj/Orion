// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternate_title_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AlternateTitleResourceCWProxy {
  AlternateTitleResource title(String? title);

  AlternateTitleResource seasonNumber(int? seasonNumber);

  AlternateTitleResource sceneSeasonNumber(int? sceneSeasonNumber);

  AlternateTitleResource sceneOrigin(String? sceneOrigin);

  AlternateTitleResource comment(String? comment);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AlternateTitleResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AlternateTitleResource(...).copyWith(id: 12, name: "My name")
  /// ````
  AlternateTitleResource call({
    String? title,
    int? seasonNumber,
    int? sceneSeasonNumber,
    String? sceneOrigin,
    String? comment,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAlternateTitleResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAlternateTitleResource.copyWith.fieldName(...)`
class _$AlternateTitleResourceCWProxyImpl
    implements _$AlternateTitleResourceCWProxy {
  const _$AlternateTitleResourceCWProxyImpl(this._value);

  final AlternateTitleResource _value;

  @override
  AlternateTitleResource title(String? title) => this(title: title);

  @override
  AlternateTitleResource seasonNumber(int? seasonNumber) =>
      this(seasonNumber: seasonNumber);

  @override
  AlternateTitleResource sceneSeasonNumber(int? sceneSeasonNumber) =>
      this(sceneSeasonNumber: sceneSeasonNumber);

  @override
  AlternateTitleResource sceneOrigin(String? sceneOrigin) =>
      this(sceneOrigin: sceneOrigin);

  @override
  AlternateTitleResource comment(String? comment) => this(comment: comment);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AlternateTitleResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AlternateTitleResource(...).copyWith(id: 12, name: "My name")
  /// ````
  AlternateTitleResource call({
    Object? title = const $CopyWithPlaceholder(),
    Object? seasonNumber = const $CopyWithPlaceholder(),
    Object? sceneSeasonNumber = const $CopyWithPlaceholder(),
    Object? sceneOrigin = const $CopyWithPlaceholder(),
    Object? comment = const $CopyWithPlaceholder(),
  }) {
    return AlternateTitleResource(
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      seasonNumber: seasonNumber == const $CopyWithPlaceholder()
          ? _value.seasonNumber
          // ignore: cast_nullable_to_non_nullable
          : seasonNumber as int?,
      sceneSeasonNumber: sceneSeasonNumber == const $CopyWithPlaceholder()
          ? _value.sceneSeasonNumber
          // ignore: cast_nullable_to_non_nullable
          : sceneSeasonNumber as int?,
      sceneOrigin: sceneOrigin == const $CopyWithPlaceholder()
          ? _value.sceneOrigin
          // ignore: cast_nullable_to_non_nullable
          : sceneOrigin as String?,
      comment: comment == const $CopyWithPlaceholder()
          ? _value.comment
          // ignore: cast_nullable_to_non_nullable
          : comment as String?,
    );
  }
}

extension $AlternateTitleResourceCopyWith on AlternateTitleResource {
  /// Returns a callable class that can be used as follows: `instanceOfAlternateTitleResource.copyWith(...)` or like so:`instanceOfAlternateTitleResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AlternateTitleResourceCWProxy get copyWith =>
      _$AlternateTitleResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlternateTitleResource _$AlternateTitleResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AlternateTitleResource', json, ($checkedConvert) {
  final val = AlternateTitleResource(
    title: $checkedConvert('title', (v) => v as String?),
    seasonNumber: $checkedConvert('seasonNumber', (v) => (v as num?)?.toInt()),
    sceneSeasonNumber: $checkedConvert(
      'sceneSeasonNumber',
      (v) => (v as num?)?.toInt(),
    ),
    sceneOrigin: $checkedConvert('sceneOrigin', (v) => v as String?),
    comment: $checkedConvert('comment', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AlternateTitleResourceToJson(
  AlternateTitleResource instance,
) => <String, dynamic>{
  'title': ?instance.title,
  'seasonNumber': ?instance.seasonNumber,
  'sceneSeasonNumber': ?instance.sceneSeasonNumber,
  'sceneOrigin': ?instance.sceneOrigin,
  'comment': ?instance.comment,
};
