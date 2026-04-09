// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_format_specification_schema.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomFormatSpecificationSchemaCWProxy {
  CustomFormatSpecificationSchema id(int? id);

  CustomFormatSpecificationSchema name(String? name);

  CustomFormatSpecificationSchema implementation(String? implementation);

  CustomFormatSpecificationSchema implementationName(
    String? implementationName,
  );

  CustomFormatSpecificationSchema infoLink(String? infoLink);

  CustomFormatSpecificationSchema negate(bool? negate);

  CustomFormatSpecificationSchema required_(bool? required_);

  CustomFormatSpecificationSchema fields(List<Field>? fields);

  CustomFormatSpecificationSchema presets(
    List<CustomFormatSpecificationSchema>? presets,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFormatSpecificationSchema(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFormatSpecificationSchema(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFormatSpecificationSchema call({
    int? id,
    String? name,
    String? implementation,
    String? implementationName,
    String? infoLink,
    bool? negate,
    bool? required_,
    List<Field>? fields,
    List<CustomFormatSpecificationSchema>? presets,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomFormatSpecificationSchema.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomFormatSpecificationSchema.copyWith.fieldName(...)`
class _$CustomFormatSpecificationSchemaCWProxyImpl
    implements _$CustomFormatSpecificationSchemaCWProxy {
  const _$CustomFormatSpecificationSchemaCWProxyImpl(this._value);

  final CustomFormatSpecificationSchema _value;

  @override
  CustomFormatSpecificationSchema id(int? id) => this(id: id);

  @override
  CustomFormatSpecificationSchema name(String? name) => this(name: name);

  @override
  CustomFormatSpecificationSchema implementation(String? implementation) =>
      this(implementation: implementation);

  @override
  CustomFormatSpecificationSchema implementationName(
    String? implementationName,
  ) => this(implementationName: implementationName);

  @override
  CustomFormatSpecificationSchema infoLink(String? infoLink) =>
      this(infoLink: infoLink);

  @override
  CustomFormatSpecificationSchema negate(bool? negate) => this(negate: negate);

  @override
  CustomFormatSpecificationSchema required_(bool? required_) =>
      this(required_: required_);

  @override
  CustomFormatSpecificationSchema fields(List<Field>? fields) =>
      this(fields: fields);

  @override
  CustomFormatSpecificationSchema presets(
    List<CustomFormatSpecificationSchema>? presets,
  ) => this(presets: presets);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomFormatSpecificationSchema(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomFormatSpecificationSchema(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomFormatSpecificationSchema call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? implementation = const $CopyWithPlaceholder(),
    Object? implementationName = const $CopyWithPlaceholder(),
    Object? infoLink = const $CopyWithPlaceholder(),
    Object? negate = const $CopyWithPlaceholder(),
    Object? required_ = const $CopyWithPlaceholder(),
    Object? fields = const $CopyWithPlaceholder(),
    Object? presets = const $CopyWithPlaceholder(),
  }) {
    return CustomFormatSpecificationSchema(
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
      infoLink: infoLink == const $CopyWithPlaceholder()
          ? _value.infoLink
          // ignore: cast_nullable_to_non_nullable
          : infoLink as String?,
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
      presets: presets == const $CopyWithPlaceholder()
          ? _value.presets
          // ignore: cast_nullable_to_non_nullable
          : presets as List<CustomFormatSpecificationSchema>?,
    );
  }
}

extension $CustomFormatSpecificationSchemaCopyWith
    on CustomFormatSpecificationSchema {
  /// Returns a callable class that can be used as follows: `instanceOfCustomFormatSpecificationSchema.copyWith(...)` or like so:`instanceOfCustomFormatSpecificationSchema.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomFormatSpecificationSchemaCWProxy get copyWith =>
      _$CustomFormatSpecificationSchemaCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomFormatSpecificationSchema _$CustomFormatSpecificationSchemaFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CustomFormatSpecificationSchema',
  json,
  ($checkedConvert) {
    final val = CustomFormatSpecificationSchema(
      id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String?),
      implementation: $checkedConvert('implementation', (v) => v as String?),
      implementationName: $checkedConvert(
        'implementationName',
        (v) => v as String?,
      ),
      infoLink: $checkedConvert('infoLink', (v) => v as String?),
      negate: $checkedConvert('negate', (v) => v as bool?),
      required_: $checkedConvert('required', (v) => v as bool?),
      fields: $checkedConvert(
        'fields',
        (v) => (v as List<dynamic>?)
            ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      presets: $checkedConvert(
        'presets',
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
  },
  fieldKeyMap: const {'required_': 'required'},
);

Map<String, dynamic> _$CustomFormatSpecificationSchemaToJson(
  CustomFormatSpecificationSchema instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'implementation': ?instance.implementation,
  'implementationName': ?instance.implementationName,
  'infoLink': ?instance.infoLink,
  'negate': ?instance.negate,
  'required': ?instance.required_,
  'fields': ?instance.fields?.map((e) => e.toJson()).toList(),
  'presets': ?instance.presets?.map((e) => e.toJson()).toList(),
};
