// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revision.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RevisionCWProxy {
  Revision version(int? version);

  Revision real(int? real);

  Revision isRepack(bool? isRepack);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Revision(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Revision(...).copyWith(id: 12, name: "My name")
  /// ````
  Revision call({int? version, int? real, bool? isRepack});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRevision.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRevision.copyWith.fieldName(...)`
class _$RevisionCWProxyImpl implements _$RevisionCWProxy {
  const _$RevisionCWProxyImpl(this._value);

  final Revision _value;

  @override
  Revision version(int? version) => this(version: version);

  @override
  Revision real(int? real) => this(real: real);

  @override
  Revision isRepack(bool? isRepack) => this(isRepack: isRepack);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Revision(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Revision(...).copyWith(id: 12, name: "My name")
  /// ````
  Revision call({
    Object? version = const $CopyWithPlaceholder(),
    Object? real = const $CopyWithPlaceholder(),
    Object? isRepack = const $CopyWithPlaceholder(),
  }) {
    return Revision(
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as int?,
      real: real == const $CopyWithPlaceholder()
          ? _value.real
          // ignore: cast_nullable_to_non_nullable
          : real as int?,
      isRepack: isRepack == const $CopyWithPlaceholder()
          ? _value.isRepack
          // ignore: cast_nullable_to_non_nullable
          : isRepack as bool?,
    );
  }
}

extension $RevisionCopyWith on Revision {
  /// Returns a callable class that can be used as follows: `instanceOfRevision.copyWith(...)` or like so:`instanceOfRevision.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RevisionCWProxy get copyWith => _$RevisionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Revision _$RevisionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Revision', json, ($checkedConvert) {
      final val = Revision(
        version: $checkedConvert('version', (v) => (v as num?)?.toInt()),
        real: $checkedConvert('real', (v) => (v as num?)?.toInt()),
        isRepack: $checkedConvert('isRepack', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$RevisionToJson(Revision instance) => <String, dynamic>{
  'version': ?instance.version,
  'real': ?instance.real,
  'isRepack': ?instance.isRepack,
};
