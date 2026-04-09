// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MetadataResourceCWProxy {
  MetadataResource id(int? id);

  MetadataResource name(String? name);

  MetadataResource fields(List<Field>? fields);

  MetadataResource implementationName(String? implementationName);

  MetadataResource implementation(String? implementation);

  MetadataResource configContract(String? configContract);

  MetadataResource infoLink(String? infoLink);

  MetadataResource message(ProviderMessage? message);

  MetadataResource tags(Set<int>? tags);

  MetadataResource presets(List<MetadataResource>? presets);

  MetadataResource enable(bool? enable);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataResource call({
    int? id,
    String? name,
    List<Field>? fields,
    String? implementationName,
    String? implementation,
    String? configContract,
    String? infoLink,
    ProviderMessage? message,
    Set<int>? tags,
    List<MetadataResource>? presets,
    bool? enable,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMetadataResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMetadataResource.copyWith.fieldName(...)`
class _$MetadataResourceCWProxyImpl implements _$MetadataResourceCWProxy {
  const _$MetadataResourceCWProxyImpl(this._value);

  final MetadataResource _value;

  @override
  MetadataResource id(int? id) => this(id: id);

  @override
  MetadataResource name(String? name) => this(name: name);

  @override
  MetadataResource fields(List<Field>? fields) => this(fields: fields);

  @override
  MetadataResource implementationName(String? implementationName) =>
      this(implementationName: implementationName);

  @override
  MetadataResource implementation(String? implementation) =>
      this(implementation: implementation);

  @override
  MetadataResource configContract(String? configContract) =>
      this(configContract: configContract);

  @override
  MetadataResource infoLink(String? infoLink) => this(infoLink: infoLink);

  @override
  MetadataResource message(ProviderMessage? message) => this(message: message);

  @override
  MetadataResource tags(Set<int>? tags) => this(tags: tags);

  @override
  MetadataResource presets(List<MetadataResource>? presets) =>
      this(presets: presets);

  @override
  MetadataResource enable(bool? enable) => this(enable: enable);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataResource(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? fields = const $CopyWithPlaceholder(),
    Object? implementationName = const $CopyWithPlaceholder(),
    Object? implementation = const $CopyWithPlaceholder(),
    Object? configContract = const $CopyWithPlaceholder(),
    Object? infoLink = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? presets = const $CopyWithPlaceholder(),
    Object? enable = const $CopyWithPlaceholder(),
  }) {
    return MetadataResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      fields: fields == const $CopyWithPlaceholder()
          ? _value.fields
          // ignore: cast_nullable_to_non_nullable
          : fields as List<Field>?,
      implementationName: implementationName == const $CopyWithPlaceholder()
          ? _value.implementationName
          // ignore: cast_nullable_to_non_nullable
          : implementationName as String?,
      implementation: implementation == const $CopyWithPlaceholder()
          ? _value.implementation
          // ignore: cast_nullable_to_non_nullable
          : implementation as String?,
      configContract: configContract == const $CopyWithPlaceholder()
          ? _value.configContract
          // ignore: cast_nullable_to_non_nullable
          : configContract as String?,
      infoLink: infoLink == const $CopyWithPlaceholder()
          ? _value.infoLink
          // ignore: cast_nullable_to_non_nullable
          : infoLink as String?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as ProviderMessage?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Set<int>?,
      presets: presets == const $CopyWithPlaceholder()
          ? _value.presets
          // ignore: cast_nullable_to_non_nullable
          : presets as List<MetadataResource>?,
      enable: enable == const $CopyWithPlaceholder()
          ? _value.enable
          // ignore: cast_nullable_to_non_nullable
          : enable as bool?,
    );
  }
}

extension $MetadataResourceCopyWith on MetadataResource {
  /// Returns a callable class that can be used as follows: `instanceOfMetadataResource.copyWith(...)` or like so:`instanceOfMetadataResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MetadataResourceCWProxy get copyWith => _$MetadataResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataResource _$MetadataResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MetadataResource', json, ($checkedConvert) {
      final val = MetadataResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        fields: $checkedConvert(
          'fields',
          (v) => (v as List<dynamic>?)
              ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        implementationName: $checkedConvert(
          'implementationName',
          (v) => v as String?,
        ),
        implementation: $checkedConvert('implementation', (v) => v as String?),
        configContract: $checkedConvert('configContract', (v) => v as String?),
        infoLink: $checkedConvert('infoLink', (v) => v as String?),
        message: $checkedConvert(
          'message',
          (v) => v == null
              ? null
              : ProviderMessage.fromJson(v as Map<String, dynamic>),
        ),
        tags: $checkedConvert(
          'tags',
          (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toSet(),
        ),
        presets: $checkedConvert(
          'presets',
          (v) => (v as List<dynamic>?)
              ?.map((e) => MetadataResource.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        enable: $checkedConvert('enable', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$MetadataResourceToJson(MetadataResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'fields': ?instance.fields?.map((e) => e.toJson()).toList(),
      'implementationName': ?instance.implementationName,
      'implementation': ?instance.implementation,
      'configContract': ?instance.configContract,
      'infoLink': ?instance.infoLink,
      'message': ?instance.message?.toJson(),
      'tags': ?instance.tags?.toList(),
      'presets': ?instance.presets?.map((e) => e.toJson()).toList(),
      'enable': ?instance.enable,
    };
