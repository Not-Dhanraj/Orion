// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ping_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PingResourceCWProxy {
  PingResource status(String? status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  PingResource call({String? status});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPingResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPingResource.copyWith.fieldName(...)`
class _$PingResourceCWProxyImpl implements _$PingResourceCWProxy {
  const _$PingResourceCWProxyImpl(this._value);

  final PingResource _value;

  @override
  PingResource status(String? status) => this(status: status);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PingResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PingResource(...).copyWith(id: 12, name: "My name")
  /// ````
  PingResource call({Object? status = const $CopyWithPlaceholder()}) {
    return PingResource(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String?,
    );
  }
}

extension $PingResourceCopyWith on PingResource {
  /// Returns a callable class that can be used as follows: `instanceOfPingResource.copyWith(...)` or like so:`instanceOfPingResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PingResourceCWProxy get copyWith => _$PingResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PingResource _$PingResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PingResource', json, ($checkedConvert) {
      final val = PingResource(
        status: $checkedConvert('status', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$PingResourceToJson(PingResource instance) =>
    <String, dynamic>{'status': ?instance.status};
