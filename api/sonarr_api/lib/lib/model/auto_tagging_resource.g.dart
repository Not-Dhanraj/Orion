// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_tagging_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AutoTaggingResourceCWProxy {
  AutoTaggingResource id(int? id);

  AutoTaggingResource name(String? name);

  AutoTaggingResource removeTagsAutomatically(bool? removeTagsAutomatically);

  AutoTaggingResource tags(Set<int>? tags);

  AutoTaggingResource specifications(
    List<AutoTaggingSpecificationSchema>? specifications,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AutoTaggingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AutoTaggingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  AutoTaggingResource call({
    int? id,
    String? name,
    bool? removeTagsAutomatically,
    Set<int>? tags,
    List<AutoTaggingSpecificationSchema>? specifications,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAutoTaggingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAutoTaggingResource.copyWith.fieldName(...)`
class _$AutoTaggingResourceCWProxyImpl implements _$AutoTaggingResourceCWProxy {
  const _$AutoTaggingResourceCWProxyImpl(this._value);

  final AutoTaggingResource _value;

  @override
  AutoTaggingResource id(int? id) => this(id: id);

  @override
  AutoTaggingResource name(String? name) => this(name: name);

  @override
  AutoTaggingResource removeTagsAutomatically(bool? removeTagsAutomatically) =>
      this(removeTagsAutomatically: removeTagsAutomatically);

  @override
  AutoTaggingResource tags(Set<int>? tags) => this(tags: tags);

  @override
  AutoTaggingResource specifications(
    List<AutoTaggingSpecificationSchema>? specifications,
  ) => this(specifications: specifications);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AutoTaggingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AutoTaggingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  AutoTaggingResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? removeTagsAutomatically = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? specifications = const $CopyWithPlaceholder(),
  }) {
    return AutoTaggingResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      removeTagsAutomatically:
          removeTagsAutomatically == const $CopyWithPlaceholder()
          ? _value.removeTagsAutomatically
          // ignore: cast_nullable_to_non_nullable
          : removeTagsAutomatically as bool?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Set<int>?,
      specifications: specifications == const $CopyWithPlaceholder()
          ? _value.specifications
          // ignore: cast_nullable_to_non_nullable
          : specifications as List<AutoTaggingSpecificationSchema>?,
    );
  }
}

extension $AutoTaggingResourceCopyWith on AutoTaggingResource {
  /// Returns a callable class that can be used as follows: `instanceOfAutoTaggingResource.copyWith(...)` or like so:`instanceOfAutoTaggingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AutoTaggingResourceCWProxy get copyWith =>
      _$AutoTaggingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoTaggingResource _$AutoTaggingResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AutoTaggingResource', json, ($checkedConvert) {
      final val = AutoTaggingResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        removeTagsAutomatically: $checkedConvert(
          'removeTagsAutomatically',
          (v) => v as bool?,
        ),
        tags: $checkedConvert(
          'tags',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet(),
        ),
        specifications: $checkedConvert(
          'specifications',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => AutoTaggingSpecificationSchema.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$AutoTaggingResourceToJson(
  AutoTaggingResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'removeTagsAutomatically': ?instance.removeTagsAutomatically,
  'tags': ?instance.tags?.toList(),
  'specifications': ?instance.specifications?.map((e) => e.toJson()).toList(),
};
