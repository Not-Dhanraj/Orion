// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_discovery_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ServerDiscoveryInfoCWProxy {
  ServerDiscoveryInfo address(String? address);

  ServerDiscoveryInfo id(String? id);

  ServerDiscoveryInfo name(String? name);

  ServerDiscoveryInfo endpointAddress(String? endpointAddress);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ServerDiscoveryInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ServerDiscoveryInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ServerDiscoveryInfo call({
    String? address,
    String? id,
    String? name,
    String? endpointAddress,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfServerDiscoveryInfo.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfServerDiscoveryInfo.copyWith.fieldName(...)`
class _$ServerDiscoveryInfoCWProxyImpl implements _$ServerDiscoveryInfoCWProxy {
  const _$ServerDiscoveryInfoCWProxyImpl(this._value);

  final ServerDiscoveryInfo _value;

  @override
  ServerDiscoveryInfo address(String? address) => this(address: address);

  @override
  ServerDiscoveryInfo id(String? id) => this(id: id);

  @override
  ServerDiscoveryInfo name(String? name) => this(name: name);

  @override
  ServerDiscoveryInfo endpointAddress(String? endpointAddress) =>
      this(endpointAddress: endpointAddress);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ServerDiscoveryInfo(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ServerDiscoveryInfo(...).copyWith(id: 12, name: "My name")
  /// ````
  ServerDiscoveryInfo call({
    Object? address = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? endpointAddress = const $CopyWithPlaceholder(),
  }) {
    return ServerDiscoveryInfo(
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      endpointAddress: endpointAddress == const $CopyWithPlaceholder()
          ? _value.endpointAddress
          // ignore: cast_nullable_to_non_nullable
          : endpointAddress as String?,
    );
  }
}

extension $ServerDiscoveryInfoCopyWith on ServerDiscoveryInfo {
  /// Returns a callable class that can be used as follows: `instanceOfServerDiscoveryInfo.copyWith(...)` or like so:`instanceOfServerDiscoveryInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ServerDiscoveryInfoCWProxy get copyWith =>
      _$ServerDiscoveryInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServerDiscoveryInfo _$ServerDiscoveryInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ServerDiscoveryInfo',
      json,
      ($checkedConvert) {
        final val = ServerDiscoveryInfo(
          address: $checkedConvert('Address', (v) => v as String?),
          id: $checkedConvert('Id', (v) => v as String?),
          name: $checkedConvert('Name', (v) => v as String?),
          endpointAddress: $checkedConvert(
            'EndpointAddress',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'address': 'Address',
        'id': 'Id',
        'name': 'Name',
        'endpointAddress': 'EndpointAddress',
      },
    );

Map<String, dynamic> _$ServerDiscoveryInfoToJson(
  ServerDiscoveryInfo instance,
) => <String, dynamic>{
  'Address': ?instance.address,
  'Id': ?instance.id,
  'Name': ?instance.name,
  'EndpointAddress': ?instance.endpointAddress,
};
