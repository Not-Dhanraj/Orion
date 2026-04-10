// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_substitution.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PathSubstitutionCWProxy {
  PathSubstitution from(String? from);

  PathSubstitution to(String? to);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PathSubstitution(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PathSubstitution(...).copyWith(id: 12, name: "My name")
  /// ````
  PathSubstitution call({String? from, String? to});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPathSubstitution.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPathSubstitution.copyWith.fieldName(...)`
class _$PathSubstitutionCWProxyImpl implements _$PathSubstitutionCWProxy {
  const _$PathSubstitutionCWProxyImpl(this._value);

  final PathSubstitution _value;

  @override
  PathSubstitution from(String? from) => this(from: from);

  @override
  PathSubstitution to(String? to) => this(to: to);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PathSubstitution(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PathSubstitution(...).copyWith(id: 12, name: "My name")
  /// ````
  PathSubstitution call({
    Object? from = const $CopyWithPlaceholder(),
    Object? to = const $CopyWithPlaceholder(),
  }) {
    return PathSubstitution(
      from: from == const $CopyWithPlaceholder()
          ? _value.from
          // ignore: cast_nullable_to_non_nullable
          : from as String?,
      to: to == const $CopyWithPlaceholder()
          ? _value.to
          // ignore: cast_nullable_to_non_nullable
          : to as String?,
    );
  }
}

extension $PathSubstitutionCopyWith on PathSubstitution {
  /// Returns a callable class that can be used as follows: `instanceOfPathSubstitution.copyWith(...)` or like so:`instanceOfPathSubstitution.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PathSubstitutionCWProxy get copyWith => _$PathSubstitutionCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PathSubstitution _$PathSubstitutionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PathSubstitution', json, ($checkedConvert) {
      final val = PathSubstitution(
        from: $checkedConvert('From', (v) => v as String?),
        to: $checkedConvert('To', (v) => v as String?),
      );
      return val;
    }, fieldKeyMap: const {'from': 'From', 'to': 'To'});

Map<String, dynamic> _$PathSubstitutionToJson(PathSubstitution instance) =>
    <String, dynamic>{'From': ?instance.from, 'To': ?instance.to};
