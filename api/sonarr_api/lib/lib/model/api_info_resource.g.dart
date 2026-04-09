// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_info_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApiInfoResourceCWProxy {
  ApiInfoResource current(String? current);

  ApiInfoResource deprecated(List<String>? deprecated);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiInfoResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiInfoResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiInfoResource call({String? current, List<String>? deprecated});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfApiInfoResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfApiInfoResource.copyWith.fieldName(...)`
class _$ApiInfoResourceCWProxyImpl implements _$ApiInfoResourceCWProxy {
  const _$ApiInfoResourceCWProxyImpl(this._value);

  final ApiInfoResource _value;

  @override
  ApiInfoResource current(String? current) => this(current: current);

  @override
  ApiInfoResource deprecated(List<String>? deprecated) =>
      this(deprecated: deprecated);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ApiInfoResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ApiInfoResource(...).copyWith(id: 12, name: "My name")
  /// ````
  ApiInfoResource call({
    Object? current = const $CopyWithPlaceholder(),
    Object? deprecated = const $CopyWithPlaceholder(),
  }) {
    return ApiInfoResource(
      current: current == const $CopyWithPlaceholder()
          ? _value.current
          // ignore: cast_nullable_to_non_nullable
          : current as String?,
      deprecated: deprecated == const $CopyWithPlaceholder()
          ? _value.deprecated
          // ignore: cast_nullable_to_non_nullable
          : deprecated as List<String>?,
    );
  }
}

extension $ApiInfoResourceCopyWith on ApiInfoResource {
  /// Returns a callable class that can be used as follows: `instanceOfApiInfoResource.copyWith(...)` or like so:`instanceOfApiInfoResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApiInfoResourceCWProxy get copyWith => _$ApiInfoResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiInfoResource _$ApiInfoResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiInfoResource', json, ($checkedConvert) {
      final val = ApiInfoResource(
        current: $checkedConvert('current', (v) => v as String?),
        deprecated: $checkedConvert(
          'deprecated',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiInfoResourceToJson(ApiInfoResource instance) =>
    <String, dynamic>{
      'current': ?instance.current,
      'deprecated': ?instance.deprecated,
    };
