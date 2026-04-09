// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_format_item_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileFormatItemResourceCWProxy {
  ProfileFormatItemResource id(int? id);

  ProfileFormatItemResource format(int? format);

  ProfileFormatItemResource name(String? name);

  ProfileFormatItemResource score(int? score);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileFormatItemResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileFormatItemResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileFormatItemResource call({
    int? id,
    int? format,
    String? name,
    int? score,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProfileFormatItemResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProfileFormatItemResource.copyWith.fieldName(...)`
class _$ProfileFormatItemResourceCWProxyImpl
    implements _$ProfileFormatItemResourceCWProxy {
  const _$ProfileFormatItemResourceCWProxyImpl(this._value);

  final ProfileFormatItemResource _value;

  @override
  ProfileFormatItemResource id(int? id) => this(id: id);

  @override
  ProfileFormatItemResource format(int? format) => this(format: format);

  @override
  ProfileFormatItemResource name(String? name) => this(name: name);

  @override
  ProfileFormatItemResource score(int? score) => this(score: score);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileFormatItemResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileFormatItemResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileFormatItemResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? format = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? score = const $CopyWithPlaceholder(),
  }) {
    return ProfileFormatItemResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      format: format == const $CopyWithPlaceholder()
          ? _value.format
          // ignore: cast_nullable_to_non_nullable
          : format as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      score: score == const $CopyWithPlaceholder()
          ? _value.score
          // ignore: cast_nullable_to_non_nullable
          : score as int?,
    );
  }
}

extension $ProfileFormatItemResourceCopyWith on ProfileFormatItemResource {
  /// Returns a callable class that can be used as follows: `instanceOfProfileFormatItemResource.copyWith(...)` or like so:`instanceOfProfileFormatItemResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileFormatItemResourceCWProxy get copyWith =>
      _$ProfileFormatItemResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileFormatItemResource _$ProfileFormatItemResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProfileFormatItemResource', json, ($checkedConvert) {
  final val = ProfileFormatItemResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    format: $checkedConvert('format', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    score: $checkedConvert('score', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ProfileFormatItemResourceToJson(
  ProfileFormatItemResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'format': ?instance.format,
  'name': ?instance.name,
  'score': ?instance.score,
};
