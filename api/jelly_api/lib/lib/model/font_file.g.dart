// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_file.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FontFileCWProxy {
  FontFile name(String? name);

  FontFile size(int? size);

  FontFile dateCreated(DateTime? dateCreated);

  FontFile dateModified(DateTime? dateModified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FontFile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FontFile(...).copyWith(id: 12, name: "My name")
  /// ````
  FontFile call({
    String? name,
    int? size,
    DateTime? dateCreated,
    DateTime? dateModified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFontFile.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFontFile.copyWith.fieldName(...)`
class _$FontFileCWProxyImpl implements _$FontFileCWProxy {
  const _$FontFileCWProxyImpl(this._value);

  final FontFile _value;

  @override
  FontFile name(String? name) => this(name: name);

  @override
  FontFile size(int? size) => this(size: size);

  @override
  FontFile dateCreated(DateTime? dateCreated) => this(dateCreated: dateCreated);

  @override
  FontFile dateModified(DateTime? dateModified) =>
      this(dateModified: dateModified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FontFile(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FontFile(...).copyWith(id: 12, name: "My name")
  /// ````
  FontFile call({
    Object? name = const $CopyWithPlaceholder(),
    Object? size = const $CopyWithPlaceholder(),
    Object? dateCreated = const $CopyWithPlaceholder(),
    Object? dateModified = const $CopyWithPlaceholder(),
  }) {
    return FontFile(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      size: size == const $CopyWithPlaceholder()
          ? _value.size
          // ignore: cast_nullable_to_non_nullable
          : size as int?,
      dateCreated: dateCreated == const $CopyWithPlaceholder()
          ? _value.dateCreated
          // ignore: cast_nullable_to_non_nullable
          : dateCreated as DateTime?,
      dateModified: dateModified == const $CopyWithPlaceholder()
          ? _value.dateModified
          // ignore: cast_nullable_to_non_nullable
          : dateModified as DateTime?,
    );
  }
}

extension $FontFileCopyWith on FontFile {
  /// Returns a callable class that can be used as follows: `instanceOfFontFile.copyWith(...)` or like so:`instanceOfFontFile.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FontFileCWProxy get copyWith => _$FontFileCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FontFile _$FontFileFromJson(Map<String, dynamic> json) => $checkedCreate(
  'FontFile',
  json,
  ($checkedConvert) {
    final val = FontFile(
      name: $checkedConvert('Name', (v) => v as String?),
      size: $checkedConvert('Size', (v) => (v as num?)?.toInt()),
      dateCreated: $checkedConvert(
        'DateCreated',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      dateModified: $checkedConvert(
        'DateModified',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'name': 'Name',
    'size': 'Size',
    'dateCreated': 'DateCreated',
    'dateModified': 'DateModified',
  },
);

Map<String, dynamic> _$FontFileToJson(FontFile instance) => <String, dynamic>{
  'Name': ?instance.name,
  'Size': ?instance.size,
  'DateCreated': ?instance.dateCreated?.toIso8601String(),
  'DateModified': ?instance.dateModified?.toIso8601String(),
};
