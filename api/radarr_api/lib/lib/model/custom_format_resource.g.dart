// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomFormatResourceCWProxy {
  CustomFormatResource id(int? id);

  CustomFormatResource name(String? name);

  CustomFormatResource includeCustomFormatWhenRenaming(
    bool? includeCustomFormatWhenRenaming,
  );

  CustomFormatResource specifications(
    List<CustomFormatSpecificationSchema>? specifications,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFormatResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFormatResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFormatResource call({
    int? id,
    String? name,
    bool? includeCustomFormatWhenRenaming,
    List<CustomFormatSpecificationSchema>? specifications,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomFormatResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomFormatResource.copyWith.fieldName(...)`
class _$CustomFormatResourceCWProxyImpl
    implements _$CustomFormatResourceCWProxy {
  const _$CustomFormatResourceCWProxyImpl(this._value);

  final CustomFormatResource _value;

  @override
  CustomFormatResource id(int? id) => this(id: id);

  @override
  CustomFormatResource name(String? name) => this(name: name);

  @override
  CustomFormatResource includeCustomFormatWhenRenaming(
    bool? includeCustomFormatWhenRenaming,
  ) => this(includeCustomFormatWhenRenaming: includeCustomFormatWhenRenaming);

  @override
  CustomFormatResource specifications(
    List<CustomFormatSpecificationSchema>? specifications,
  ) => this(specifications: specifications);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFormatResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFormatResource(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFormatResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? includeCustomFormatWhenRenaming = const $CopyWithPlaceholder(),
    Object? specifications = const $CopyWithPlaceholder(),
  }) {
    return CustomFormatResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      includeCustomFormatWhenRenaming:
          includeCustomFormatWhenRenaming == const $CopyWithPlaceholder()
          ? _value.includeCustomFormatWhenRenaming
          // ignore: cast_nullable_to_non_nullable
          : includeCustomFormatWhenRenaming as bool?,
      specifications: specifications == const $CopyWithPlaceholder()
          ? _value.specifications
          // ignore: cast_nullable_to_non_nullable
          : specifications as List<CustomFormatSpecificationSchema>?,
    );
  }
}

extension $CustomFormatResourceCopyWith on CustomFormatResource {
  /// Returns a callable class that can be used as follows: `instanceOfCustomFormatResource.copyWith(...)` or like so:`instanceOfCustomFormatResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomFormatResourceCWProxy get copyWith =>
      _$CustomFormatResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomFormatResource _$CustomFormatResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomFormatResource', json, ($checkedConvert) {
  final val = CustomFormatResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    includeCustomFormatWhenRenaming: $checkedConvert(
      'includeCustomFormatWhenRenaming',
      (v) => v as bool?,
    ),
    specifications: $checkedConvert(
      'specifications',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => CustomFormatSpecificationSchema.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CustomFormatResourceToJson(
  CustomFormatResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'includeCustomFormatWhenRenaming': ?instance.includeCustomFormatWhenRenaming,
  'specifications': ?instance.specifications?.map((e) => e.toJson()).toList(),
};
