// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_tagging_specification_schema.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AutoTaggingSpecificationSchemaCWProxy {
  AutoTaggingSpecificationSchema id(int? id);

  AutoTaggingSpecificationSchema name(String? name);

  AutoTaggingSpecificationSchema implementation(String? implementation);

  AutoTaggingSpecificationSchema implementationName(String? implementationName);

  AutoTaggingSpecificationSchema negate(bool? negate);

  AutoTaggingSpecificationSchema required_(bool? required_);

  AutoTaggingSpecificationSchema fields(List<Field>? fields);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AutoTaggingSpecificationSchema(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AutoTaggingSpecificationSchema(...).copyWith(id: 12, name: "My name")
  /// ````
  AutoTaggingSpecificationSchema call({
    int? id,
    String? name,
    String? implementation,
    String? implementationName,
    bool? negate,
    bool? required_,
    List<Field>? fields,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAutoTaggingSpecificationSchema.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAutoTaggingSpecificationSchema.copyWith.fieldName(...)`
class _$AutoTaggingSpecificationSchemaCWProxyImpl
    implements _$AutoTaggingSpecificationSchemaCWProxy {
  const _$AutoTaggingSpecificationSchemaCWProxyImpl(this._value);

  final AutoTaggingSpecificationSchema _value;

  @override
  AutoTaggingSpecificationSchema id(int? id) => this(id: id);

  @override
  AutoTaggingSpecificationSchema name(String? name) => this(name: name);

  @override
  AutoTaggingSpecificationSchema implementation(String? implementation) =>
      this(implementation: implementation);

  @override
  AutoTaggingSpecificationSchema implementationName(
    String? implementationName,
  ) => this(implementationName: implementationName);

  @override
  AutoTaggingSpecificationSchema negate(bool? negate) => this(negate: negate);

  @override
  AutoTaggingSpecificationSchema required_(bool? required_) =>
      this(required_: required_);

  @override
  AutoTaggingSpecificationSchema fields(List<Field>? fields) =>
      this(fields: fields);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AutoTaggingSpecificationSchema(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AutoTaggingSpecificationSchema(...).copyWith(id: 12, name: "My name")
  /// ````
  AutoTaggingSpecificationSchema call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? implementation = const $CopyWithPlaceholder(),
    Object? implementationName = const $CopyWithPlaceholder(),
    Object? negate = const $CopyWithPlaceholder(),
    Object? required_ = const $CopyWithPlaceholder(),
    Object? fields = const $CopyWithPlaceholder(),
  }) {
    return AutoTaggingSpecificationSchema(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      implementation: implementation == const $CopyWithPlaceholder()
          ? _value.implementation
          // ignore: cast_nullable_to_non_nullable
          : implementation as String?,
      implementationName: implementationName == const $CopyWithPlaceholder()
          ? _value.implementationName
          // ignore: cast_nullable_to_non_nullable
          : implementationName as String?,
      negate: negate == const $CopyWithPlaceholder()
          ? _value.negate
          // ignore: cast_nullable_to_non_nullable
          : negate as bool?,
      required_: required_ == const $CopyWithPlaceholder()
          ? _value.required_
          // ignore: cast_nullable_to_non_nullable
          : required_ as bool?,
      fields: fields == const $CopyWithPlaceholder()
          ? _value.fields
          // ignore: cast_nullable_to_non_nullable
          : fields as List<Field>?,
    );
  }
}

extension $AutoTaggingSpecificationSchemaCopyWith
    on AutoTaggingSpecificationSchema {
  /// Returns a callable class that can be used as follows: `instanceOfAutoTaggingSpecificationSchema.copyWith(...)` or like so:`instanceOfAutoTaggingSpecificationSchema.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AutoTaggingSpecificationSchemaCWProxy get copyWith =>
      _$AutoTaggingSpecificationSchemaCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoTaggingSpecificationSchema _$AutoTaggingSpecificationSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AutoTaggingSpecificationSchema',
  json,
  ($checkedConvert) {
    final val = AutoTaggingSpecificationSchema(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String?),
      implementation: $checkedConvert('implementation', (v) => v as String?),
      implementationName: $checkedConvert(
        'implementationName',
        (v) => v as String?,
      ),
      negate: $checkedConvert('negate', (v) => v as bool?),
      required_: $checkedConvert('required', (v) => v as bool?),
      fields: $checkedConvert(
        'fields',
        (v) => (v as List<dynamic>?)
            ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'required_': 'required'},
);

Map<String, dynamic> _$AutoTaggingSpecificationSchemaToJson(
  AutoTaggingSpecificationSchema instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'implementation': ?instance.implementation,
  'implementationName': ?instance.implementationName,
  'negate': ?instance.negate,
  'required': ?instance.required_,
  'fields': ?instance.fields?.map((e) => e.toJson()).toList(),
};
