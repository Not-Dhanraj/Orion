// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_profile_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReleaseProfileResourceCWProxy {
  ReleaseProfileResource id(int? id);

  ReleaseProfileResource name(String? name);

  ReleaseProfileResource enabled(bool? enabled);

  ReleaseProfileResource required_(Object? required_);

  ReleaseProfileResource ignored(Object? ignored);

  ReleaseProfileResource indexerId(int? indexerId);

  ReleaseProfileResource tags(Set<int>? tags);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReleaseProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReleaseProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ReleaseProfileResource call({
    int? id,
    String? name,
    bool? enabled,
    Object? required_,
    Object? ignored,
    int? indexerId,
    Set<int>? tags,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReleaseProfileResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReleaseProfileResource.copyWith.fieldName(...)`
class _$ReleaseProfileResourceCWProxyImpl
    implements _$ReleaseProfileResourceCWProxy {
  const _$ReleaseProfileResourceCWProxyImpl(this._value);

  final ReleaseProfileResource _value;

  @override
  ReleaseProfileResource id(int? id) => this(id: id);

  @override
  ReleaseProfileResource name(String? name) => this(name: name);

  @override
  ReleaseProfileResource enabled(bool? enabled) => this(enabled: enabled);

  @override
  ReleaseProfileResource required_(Object? required_) =>
      this(required_: required_);

  @override
  ReleaseProfileResource ignored(Object? ignored) => this(ignored: ignored);

  @override
  ReleaseProfileResource indexerId(int? indexerId) =>
      this(indexerId: indexerId);

  @override
  ReleaseProfileResource tags(Set<int>? tags) => this(tags: tags);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReleaseProfileResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReleaseProfileResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ReleaseProfileResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? enabled = const $CopyWithPlaceholder(),
    Object? required_ = const $CopyWithPlaceholder(),
    Object? ignored = const $CopyWithPlaceholder(),
    Object? indexerId = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
  }) {
    return ReleaseProfileResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      enabled: enabled == const $CopyWithPlaceholder()
          ? _value.enabled
          // ignore: cast_nullable_to_non_nullable
          : enabled as bool?,
      required_: required_ == const $CopyWithPlaceholder()
          ? _value.required_
          // ignore: cast_nullable_to_non_nullable
          : required_ as Object?,
      ignored: ignored == const $CopyWithPlaceholder()
          ? _value.ignored
          // ignore: cast_nullable_to_non_nullable
          : ignored as Object?,
      indexerId: indexerId == const $CopyWithPlaceholder()
          ? _value.indexerId
          // ignore: cast_nullable_to_non_nullable
          : indexerId as int?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Set<int>?,
    );
  }
}

extension $ReleaseProfileResourceCopyWith on ReleaseProfileResource {
  /// Returns a callable class that can be used as follows: `instanceOfReleaseProfileResource.copyWith(...)` or like so:`instanceOfReleaseProfileResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReleaseProfileResourceCWProxy get copyWith =>
      _$ReleaseProfileResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReleaseProfileResource _$ReleaseProfileResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReleaseProfileResource', json, ($checkedConvert) {
  final val = ReleaseProfileResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    enabled: $checkedConvert('enabled', (v) => v as bool?),
    required_: $checkedConvert('required', (v) => v),
    ignored: $checkedConvert('ignored', (v) => v),
    indexerId: $checkedConvert('indexerId', (v) => (v as num?)?.toInt()),
    tags: $checkedConvert(
      'tags',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet(),
    ),
  );
  return val;
}, fieldKeyMap: const {'required_': 'required'});

Map<String, dynamic> _$ReleaseProfileResourceToJson(
  ReleaseProfileResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'enabled': ?instance.enabled,
  'required': ?instance.required_,
  'ignored': ?instance.ignored,
  'indexerId': ?instance.indexerId,
  'tags': ?instance.tags?.toList(),
};
