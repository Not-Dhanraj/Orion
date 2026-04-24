// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_point_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EndPointInfoCWProxy {
  EndPointInfo isLocal(bool? isLocal);

  EndPointInfo isInNetwork(bool? isInNetwork);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EndPointInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EndPointInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  EndPointInfo call({bool? isLocal, bool? isInNetwork});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEndPointInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEndPointInfo.copyWith.fieldName(...)`
class _$EndPointInfoCWProxyImpl implements _$EndPointInfoCWProxy {
  const _$EndPointInfoCWProxyImpl(this._value);

  final EndPointInfo _value;

  @override
  EndPointInfo isLocal(bool? isLocal) => this(isLocal: isLocal);

  @override
  EndPointInfo isInNetwork(bool? isInNetwork) => this(isInNetwork: isInNetwork);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EndPointInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EndPointInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  EndPointInfo call({
    Object? isLocal = const $CopyWithPlaceholder(),
    Object? isInNetwork = const $CopyWithPlaceholder(),
  }) {
    return EndPointInfo(
      isLocal: isLocal == const $CopyWithPlaceholder()
          ? _value.isLocal
          // ignore: cast_nullable_to_non_nullable
          : isLocal as bool?,
      isInNetwork: isInNetwork == const $CopyWithPlaceholder()
          ? _value.isInNetwork
          // ignore: cast_nullable_to_non_nullable
          : isInNetwork as bool?,
    );
  }
}

extension $EndPointInfoCopyWith on EndPointInfo {
  /// Returns a callable class that can be used as follows: `instanceOfEndPointInfo.copyWith(...)` or like so:`instanceOfEndPointInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EndPointInfoCWProxy get copyWith => _$EndPointInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EndPointInfo _$EndPointInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EndPointInfo',
      json,
      ($checkedConvert) {
        final val = EndPointInfo(
          isLocal: $checkedConvert('IsLocal', (v) => v as bool?),
          isInNetwork: $checkedConvert('IsInNetwork', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'isLocal': 'IsLocal', 'isInNetwork': 'IsInNetwork'},
    );

Map<String, dynamic> _$EndPointInfoToJson(EndPointInfo instance) =>
    <String, dynamic>{
      'IsLocal': ?instance.isLocal,
      'IsInNetwork': ?instance.isInNetwork,
    };
