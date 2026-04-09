// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HealthResourceCWProxy {
  HealthResource id(int? id);

  HealthResource source_(String? source_);

  HealthResource type(HealthCheckResult? type);

  HealthResource message(String? message);

  HealthResource wikiUrl(HttpUri? wikiUrl);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HealthResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HealthResource(...).copyWith(id: 12, name: "My name")
  /// ````
  HealthResource call({
    int? id,
    String? source_,
    HealthCheckResult? type,
    String? message,
    HttpUri? wikiUrl,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHealthResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHealthResource.copyWith.fieldName(...)`
class _$HealthResourceCWProxyImpl implements _$HealthResourceCWProxy {
  const _$HealthResourceCWProxyImpl(this._value);

  final HealthResource _value;

  @override
  HealthResource id(int? id) => this(id: id);

  @override
  HealthResource source_(String? source_) => this(source_: source_);

  @override
  HealthResource type(HealthCheckResult? type) => this(type: type);

  @override
  HealthResource message(String? message) => this(message: message);

  @override
  HealthResource wikiUrl(HttpUri? wikiUrl) => this(wikiUrl: wikiUrl);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HealthResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HealthResource(...).copyWith(id: 12, name: "My name")
  /// ````
  HealthResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? source_ = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? wikiUrl = const $CopyWithPlaceholder(),
  }) {
    return HealthResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      source_: source_ == const $CopyWithPlaceholder()
          ? _value.source_
          // ignore: cast_nullable_to_non_nullable
          : source_ as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as HealthCheckResult?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      wikiUrl: wikiUrl == const $CopyWithPlaceholder()
          ? _value.wikiUrl
          // ignore: cast_nullable_to_non_nullable
          : wikiUrl as HttpUri?,
    );
  }
}

extension $HealthResourceCopyWith on HealthResource {
  /// Returns a callable class that can be used as follows: `instanceOfHealthResource.copyWith(...)` or like so:`instanceOfHealthResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HealthResourceCWProxy get copyWith => _$HealthResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthResource _$HealthResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('HealthResource', json, ($checkedConvert) {
      final val = HealthResource(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        source_: $checkedConvert('source', (v) => v as String?),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$HealthCheckResultEnumMap, v),
        ),
        message: $checkedConvert('message', (v) => v as String?),
        wikiUrl: $checkedConvert(
          'wikiUrl',
          (v) => v == null ? null : HttpUri.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'source_': 'source'});

Map<String, dynamic> _$HealthResourceToJson(HealthResource instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'source': ?instance.source_,
      'type': ?_$HealthCheckResultEnumMap[instance.type],
      'message': ?instance.message,
      'wikiUrl': ?instance.wikiUrl?.toJson(),
    };

const _$HealthCheckResultEnumMap = {
  HealthCheckResult.ok: 'ok',
  HealthCheckResult.notice: 'notice',
  HealthCheckResult.warning: 'warning',
  HealthCheckResult.error: 'error',
};
