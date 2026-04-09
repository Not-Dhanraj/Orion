// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreditResourceCWProxy {
  CreditResource id(int? id);

  CreditResource personName(String? personName);

  CreditResource creditTmdbId(String? creditTmdbId);

  CreditResource personTmdbId(int? personTmdbId);

  CreditResource movieMetadataId(int? movieMetadataId);

  CreditResource images(List<MediaCover>? images);

  CreditResource department(String? department);

  CreditResource job(String? job);

  CreditResource character(String? character);

  CreditResource order(int? order);

  CreditResource type(CreditType? type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreditResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreditResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CreditResource call({
    int? id,
    String? personName,
    String? creditTmdbId,
    int? personTmdbId,
    int? movieMetadataId,
    List<MediaCover>? images,
    String? department,
    String? job,
    String? character,
    int? order,
    CreditType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreditResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreditResource.copyWith.fieldName(...)`
class _$CreditResourceCWProxyImpl implements _$CreditResourceCWProxy {
  const _$CreditResourceCWProxyImpl(this._value);

  final CreditResource _value;

  @override
  CreditResource id(int? id) => this(id: id);

  @override
  CreditResource personName(String? personName) => this(personName: personName);

  @override
  CreditResource creditTmdbId(String? creditTmdbId) =>
      this(creditTmdbId: creditTmdbId);

  @override
  CreditResource personTmdbId(int? personTmdbId) =>
      this(personTmdbId: personTmdbId);

  @override
  CreditResource movieMetadataId(int? movieMetadataId) =>
      this(movieMetadataId: movieMetadataId);

  @override
  CreditResource images(List<MediaCover>? images) => this(images: images);

  @override
  CreditResource department(String? department) => this(department: department);

  @override
  CreditResource job(String? job) => this(job: job);

  @override
  CreditResource character(String? character) => this(character: character);

  @override
  CreditResource order(int? order) => this(order: order);

  @override
  CreditResource type(CreditType? type) => this(type: type);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreditResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreditResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CreditResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? personName = const $CopyWithPlaceholder(),
    Object? creditTmdbId = const $CopyWithPlaceholder(),
    Object? personTmdbId = const $CopyWithPlaceholder(),
    Object? movieMetadataId = const $CopyWithPlaceholder(),
    Object? images = const $CopyWithPlaceholder(),
    Object? department = const $CopyWithPlaceholder(),
    Object? job = const $CopyWithPlaceholder(),
    Object? character = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return CreditResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      personName: personName == const $CopyWithPlaceholder()
          ? _value.personName
          // ignore: cast_nullable_to_non_nullable
          : personName as String?,
      creditTmdbId: creditTmdbId == const $CopyWithPlaceholder()
          ? _value.creditTmdbId
          // ignore: cast_nullable_to_non_nullable
          : creditTmdbId as String?,
      personTmdbId: personTmdbId == const $CopyWithPlaceholder()
          ? _value.personTmdbId
          // ignore: cast_nullable_to_non_nullable
          : personTmdbId as int?,
      movieMetadataId: movieMetadataId == const $CopyWithPlaceholder()
          ? _value.movieMetadataId
          // ignore: cast_nullable_to_non_nullable
          : movieMetadataId as int?,
      images: images == const $CopyWithPlaceholder()
          ? _value.images
          // ignore: cast_nullable_to_non_nullable
          : images as List<MediaCover>?,
      department: department == const $CopyWithPlaceholder()
          ? _value.department
          // ignore: cast_nullable_to_non_nullable
          : department as String?,
      job: job == const $CopyWithPlaceholder()
          ? _value.job
          // ignore: cast_nullable_to_non_nullable
          : job as String?,
      character: character == const $CopyWithPlaceholder()
          ? _value.character
          // ignore: cast_nullable_to_non_nullable
          : character as String?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as int?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as CreditType?,
    );
  }
}

extension $CreditResourceCopyWith on CreditResource {
  /// Returns a callable class that can be used as follows: `instanceOfCreditResource.copyWith(...)` or like so:`instanceOfCreditResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreditResourceCWProxy get copyWith => _$CreditResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditResource _$CreditResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreditResource', json, ($checkedConvert) {
      final val = CreditResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        personName: $checkedConvert('personName', (v) => v as String?),
        creditTmdbId: $checkedConvert('creditTmdbId', (v) => v as String?),
        personTmdbId: $checkedConvert(
          'personTmdbId',
          (v) => (v as num?)?.toInt(),
        ),
        movieMetadataId: $checkedConvert(
          'movieMetadataId',
          (v) => (v as num?)?.toInt(),
        ),
        images: $checkedConvert(
          'images',
          (v) => (v as List<dynamic>?)
              ?.map((e) => MediaCover.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        department: $checkedConvert('department', (v) => v as String?),
        job: $checkedConvert('job', (v) => v as String?),
        character: $checkedConvert('character', (v) => v as String?),
        order: $checkedConvert('order', (v) => (v as num?)?.toInt()),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$CreditTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CreditResourceToJson(CreditResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'personName': ?instance.personName,
      'creditTmdbId': ?instance.creditTmdbId,
      'personTmdbId': ?instance.personTmdbId,
      'movieMetadataId': ?instance.movieMetadataId,
      'images': ?instance.images?.map((e) => e.toJson()).toList(),
      'department': ?instance.department,
      'job': ?instance.job,
      'character': ?instance.character,
      'order': ?instance.order,
      'type': ?_$CreditTypeEnumMap[instance.type],
    };

const _$CreditTypeEnumMap = {CreditType.cast: 'cast', CreditType.crew: 'crew'};
