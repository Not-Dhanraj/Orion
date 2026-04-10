// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_configuration.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NetworkConfigurationCWProxy {
  NetworkConfiguration baseUrl(String? baseUrl);

  NetworkConfiguration enableHttps(bool? enableHttps);

  NetworkConfiguration requireHttps(bool? requireHttps);

  NetworkConfiguration certificatePath(String? certificatePath);

  NetworkConfiguration certificatePassword(String? certificatePassword);

  NetworkConfiguration internalHttpPort(int? internalHttpPort);

  NetworkConfiguration internalHttpsPort(int? internalHttpsPort);

  NetworkConfiguration publicHttpPort(int? publicHttpPort);

  NetworkConfiguration publicHttpsPort(int? publicHttpsPort);

  NetworkConfiguration autoDiscovery(bool? autoDiscovery);

  NetworkConfiguration enableUPnP(bool? enableUPnP);

  NetworkConfiguration enableIPv4(bool? enableIPv4);

  NetworkConfiguration enableIPv6(bool? enableIPv6);

  NetworkConfiguration enableRemoteAccess(bool? enableRemoteAccess);

  NetworkConfiguration localNetworkSubnets(List<String>? localNetworkSubnets);

  NetworkConfiguration localNetworkAddresses(
    List<String>? localNetworkAddresses,
  );

  NetworkConfiguration knownProxies(List<String>? knownProxies);

  NetworkConfiguration ignoreVirtualInterfaces(bool? ignoreVirtualInterfaces);

  NetworkConfiguration virtualInterfaceNames(
    List<String>? virtualInterfaceNames,
  );

  NetworkConfiguration enablePublishedServerUriByRequest(
    bool? enablePublishedServerUriByRequest,
  );

  NetworkConfiguration publishedServerUriBySubnet(
    List<String>? publishedServerUriBySubnet,
  );

  NetworkConfiguration remoteIPFilter(List<String>? remoteIPFilter);

  NetworkConfiguration isRemoteIPFilterBlacklist(
    bool? isRemoteIPFilterBlacklist,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NetworkConfiguration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NetworkConfiguration(...).copyWith(id: 12, name: "My name")
  /// ````
  NetworkConfiguration call({
    String? baseUrl,
    bool? enableHttps,
    bool? requireHttps,
    String? certificatePath,
    String? certificatePassword,
    int? internalHttpPort,
    int? internalHttpsPort,
    int? publicHttpPort,
    int? publicHttpsPort,
    bool? autoDiscovery,
    bool? enableUPnP,
    bool? enableIPv4,
    bool? enableIPv6,
    bool? enableRemoteAccess,
    List<String>? localNetworkSubnets,
    List<String>? localNetworkAddresses,
    List<String>? knownProxies,
    bool? ignoreVirtualInterfaces,
    List<String>? virtualInterfaceNames,
    bool? enablePublishedServerUriByRequest,
    List<String>? publishedServerUriBySubnet,
    List<String>? remoteIPFilter,
    bool? isRemoteIPFilterBlacklist,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNetworkConfiguration.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNetworkConfiguration.copyWith.fieldName(...)`
class _$NetworkConfigurationCWProxyImpl
    implements _$NetworkConfigurationCWProxy {
  const _$NetworkConfigurationCWProxyImpl(this._value);

  final NetworkConfiguration _value;

  @override
  NetworkConfiguration baseUrl(String? baseUrl) => this(baseUrl: baseUrl);

  @override
  NetworkConfiguration enableHttps(bool? enableHttps) =>
      this(enableHttps: enableHttps);

  @override
  NetworkConfiguration requireHttps(bool? requireHttps) =>
      this(requireHttps: requireHttps);

  @override
  NetworkConfiguration certificatePath(String? certificatePath) =>
      this(certificatePath: certificatePath);

  @override
  NetworkConfiguration certificatePassword(String? certificatePassword) =>
      this(certificatePassword: certificatePassword);

  @override
  NetworkConfiguration internalHttpPort(int? internalHttpPort) =>
      this(internalHttpPort: internalHttpPort);

  @override
  NetworkConfiguration internalHttpsPort(int? internalHttpsPort) =>
      this(internalHttpsPort: internalHttpsPort);

  @override
  NetworkConfiguration publicHttpPort(int? publicHttpPort) =>
      this(publicHttpPort: publicHttpPort);

  @override
  NetworkConfiguration publicHttpsPort(int? publicHttpsPort) =>
      this(publicHttpsPort: publicHttpsPort);

  @override
  NetworkConfiguration autoDiscovery(bool? autoDiscovery) =>
      this(autoDiscovery: autoDiscovery);

  @override
  NetworkConfiguration enableUPnP(bool? enableUPnP) =>
      this(enableUPnP: enableUPnP);

  @override
  NetworkConfiguration enableIPv4(bool? enableIPv4) =>
      this(enableIPv4: enableIPv4);

  @override
  NetworkConfiguration enableIPv6(bool? enableIPv6) =>
      this(enableIPv6: enableIPv6);

  @override
  NetworkConfiguration enableRemoteAccess(bool? enableRemoteAccess) =>
      this(enableRemoteAccess: enableRemoteAccess);

  @override
  NetworkConfiguration localNetworkSubnets(List<String>? localNetworkSubnets) =>
      this(localNetworkSubnets: localNetworkSubnets);

  @override
  NetworkConfiguration localNetworkAddresses(
    List<String>? localNetworkAddresses,
  ) => this(localNetworkAddresses: localNetworkAddresses);

  @override
  NetworkConfiguration knownProxies(List<String>? knownProxies) =>
      this(knownProxies: knownProxies);

  @override
  NetworkConfiguration ignoreVirtualInterfaces(bool? ignoreVirtualInterfaces) =>
      this(ignoreVirtualInterfaces: ignoreVirtualInterfaces);

  @override
  NetworkConfiguration virtualInterfaceNames(
    List<String>? virtualInterfaceNames,
  ) => this(virtualInterfaceNames: virtualInterfaceNames);

  @override
  NetworkConfiguration enablePublishedServerUriByRequest(
    bool? enablePublishedServerUriByRequest,
  ) => this(
    enablePublishedServerUriByRequest: enablePublishedServerUriByRequest,
  );

  @override
  NetworkConfiguration publishedServerUriBySubnet(
    List<String>? publishedServerUriBySubnet,
  ) => this(publishedServerUriBySubnet: publishedServerUriBySubnet);

  @override
  NetworkConfiguration remoteIPFilter(List<String>? remoteIPFilter) =>
      this(remoteIPFilter: remoteIPFilter);

  @override
  NetworkConfiguration isRemoteIPFilterBlacklist(
    bool? isRemoteIPFilterBlacklist,
  ) => this(isRemoteIPFilterBlacklist: isRemoteIPFilterBlacklist);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NetworkConfiguration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NetworkConfiguration(...).copyWith(id: 12, name: "My name")
  /// ````
  NetworkConfiguration call({
    Object? baseUrl = const $CopyWithPlaceholder(),
    Object? enableHttps = const $CopyWithPlaceholder(),
    Object? requireHttps = const $CopyWithPlaceholder(),
    Object? certificatePath = const $CopyWithPlaceholder(),
    Object? certificatePassword = const $CopyWithPlaceholder(),
    Object? internalHttpPort = const $CopyWithPlaceholder(),
    Object? internalHttpsPort = const $CopyWithPlaceholder(),
    Object? publicHttpPort = const $CopyWithPlaceholder(),
    Object? publicHttpsPort = const $CopyWithPlaceholder(),
    Object? autoDiscovery = const $CopyWithPlaceholder(),
    Object? enableUPnP = const $CopyWithPlaceholder(),
    Object? enableIPv4 = const $CopyWithPlaceholder(),
    Object? enableIPv6 = const $CopyWithPlaceholder(),
    Object? enableRemoteAccess = const $CopyWithPlaceholder(),
    Object? localNetworkSubnets = const $CopyWithPlaceholder(),
    Object? localNetworkAddresses = const $CopyWithPlaceholder(),
    Object? knownProxies = const $CopyWithPlaceholder(),
    Object? ignoreVirtualInterfaces = const $CopyWithPlaceholder(),
    Object? virtualInterfaceNames = const $CopyWithPlaceholder(),
    Object? enablePublishedServerUriByRequest = const $CopyWithPlaceholder(),
    Object? publishedServerUriBySubnet = const $CopyWithPlaceholder(),
    Object? remoteIPFilter = const $CopyWithPlaceholder(),
    Object? isRemoteIPFilterBlacklist = const $CopyWithPlaceholder(),
  }) {
    return NetworkConfiguration(
      baseUrl: baseUrl == const $CopyWithPlaceholder()
          ? _value.baseUrl
          // ignore: cast_nullable_to_non_nullable
          : baseUrl as String?,
      enableHttps: enableHttps == const $CopyWithPlaceholder()
          ? _value.enableHttps
          // ignore: cast_nullable_to_non_nullable
          : enableHttps as bool?,
      requireHttps: requireHttps == const $CopyWithPlaceholder()
          ? _value.requireHttps
          // ignore: cast_nullable_to_non_nullable
          : requireHttps as bool?,
      certificatePath: certificatePath == const $CopyWithPlaceholder()
          ? _value.certificatePath
          // ignore: cast_nullable_to_non_nullable
          : certificatePath as String?,
      certificatePassword: certificatePassword == const $CopyWithPlaceholder()
          ? _value.certificatePassword
          // ignore: cast_nullable_to_non_nullable
          : certificatePassword as String?,
      internalHttpPort: internalHttpPort == const $CopyWithPlaceholder()
          ? _value.internalHttpPort
          // ignore: cast_nullable_to_non_nullable
          : internalHttpPort as int?,
      internalHttpsPort: internalHttpsPort == const $CopyWithPlaceholder()
          ? _value.internalHttpsPort
          // ignore: cast_nullable_to_non_nullable
          : internalHttpsPort as int?,
      publicHttpPort: publicHttpPort == const $CopyWithPlaceholder()
          ? _value.publicHttpPort
          // ignore: cast_nullable_to_non_nullable
          : publicHttpPort as int?,
      publicHttpsPort: publicHttpsPort == const $CopyWithPlaceholder()
          ? _value.publicHttpsPort
          // ignore: cast_nullable_to_non_nullable
          : publicHttpsPort as int?,
      autoDiscovery: autoDiscovery == const $CopyWithPlaceholder()
          ? _value.autoDiscovery
          // ignore: cast_nullable_to_non_nullable
          : autoDiscovery as bool?,
      enableUPnP: enableUPnP == const $CopyWithPlaceholder()
          ? _value.enableUPnP
          // ignore: cast_nullable_to_non_nullable
          : enableUPnP as bool?,
      enableIPv4: enableIPv4 == const $CopyWithPlaceholder()
          ? _value.enableIPv4
          // ignore: cast_nullable_to_non_nullable
          : enableIPv4 as bool?,
      enableIPv6: enableIPv6 == const $CopyWithPlaceholder()
          ? _value.enableIPv6
          // ignore: cast_nullable_to_non_nullable
          : enableIPv6 as bool?,
      enableRemoteAccess: enableRemoteAccess == const $CopyWithPlaceholder()
          ? _value.enableRemoteAccess
          // ignore: cast_nullable_to_non_nullable
          : enableRemoteAccess as bool?,
      localNetworkSubnets: localNetworkSubnets == const $CopyWithPlaceholder()
          ? _value.localNetworkSubnets
          // ignore: cast_nullable_to_non_nullable
          : localNetworkSubnets as List<String>?,
      localNetworkAddresses:
          localNetworkAddresses == const $CopyWithPlaceholder()
          ? _value.localNetworkAddresses
          // ignore: cast_nullable_to_non_nullable
          : localNetworkAddresses as List<String>?,
      knownProxies: knownProxies == const $CopyWithPlaceholder()
          ? _value.knownProxies
          // ignore: cast_nullable_to_non_nullable
          : knownProxies as List<String>?,
      ignoreVirtualInterfaces:
          ignoreVirtualInterfaces == const $CopyWithPlaceholder()
          ? _value.ignoreVirtualInterfaces
          // ignore: cast_nullable_to_non_nullable
          : ignoreVirtualInterfaces as bool?,
      virtualInterfaceNames:
          virtualInterfaceNames == const $CopyWithPlaceholder()
          ? _value.virtualInterfaceNames
          // ignore: cast_nullable_to_non_nullable
          : virtualInterfaceNames as List<String>?,
      enablePublishedServerUriByRequest:
          enablePublishedServerUriByRequest == const $CopyWithPlaceholder()
          ? _value.enablePublishedServerUriByRequest
          // ignore: cast_nullable_to_non_nullable
          : enablePublishedServerUriByRequest as bool?,
      publishedServerUriBySubnet:
          publishedServerUriBySubnet == const $CopyWithPlaceholder()
          ? _value.publishedServerUriBySubnet
          // ignore: cast_nullable_to_non_nullable
          : publishedServerUriBySubnet as List<String>?,
      remoteIPFilter: remoteIPFilter == const $CopyWithPlaceholder()
          ? _value.remoteIPFilter
          // ignore: cast_nullable_to_non_nullable
          : remoteIPFilter as List<String>?,
      isRemoteIPFilterBlacklist:
          isRemoteIPFilterBlacklist == const $CopyWithPlaceholder()
          ? _value.isRemoteIPFilterBlacklist
          // ignore: cast_nullable_to_non_nullable
          : isRemoteIPFilterBlacklist as bool?,
    );
  }
}

extension $NetworkConfigurationCopyWith on NetworkConfiguration {
  /// Returns a callable class that can be used as follows: `instanceOfNetworkConfiguration.copyWith(...)` or like so:`instanceOfNetworkConfiguration.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NetworkConfigurationCWProxy get copyWith =>
      _$NetworkConfigurationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkConfiguration _$NetworkConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'NetworkConfiguration',
  json,
  ($checkedConvert) {
    final val = NetworkConfiguration(
      baseUrl: $checkedConvert('BaseUrl', (v) => v as String?),
      enableHttps: $checkedConvert('EnableHttps', (v) => v as bool?),
      requireHttps: $checkedConvert('RequireHttps', (v) => v as bool?),
      certificatePath: $checkedConvert('CertificatePath', (v) => v as String?),
      certificatePassword: $checkedConvert(
        'CertificatePassword',
        (v) => v as String?,
      ),
      internalHttpPort: $checkedConvert(
        'InternalHttpPort',
        (v) => (v as num?)?.toInt(),
      ),
      internalHttpsPort: $checkedConvert(
        'InternalHttpsPort',
        (v) => (v as num?)?.toInt(),
      ),
      publicHttpPort: $checkedConvert(
        'PublicHttpPort',
        (v) => (v as num?)?.toInt(),
      ),
      publicHttpsPort: $checkedConvert(
        'PublicHttpsPort',
        (v) => (v as num?)?.toInt(),
      ),
      autoDiscovery: $checkedConvert('AutoDiscovery', (v) => v as bool?),
      enableUPnP: $checkedConvert('EnableUPnP', (v) => v as bool?),
      enableIPv4: $checkedConvert('EnableIPv4', (v) => v as bool?),
      enableIPv6: $checkedConvert('EnableIPv6', (v) => v as bool?),
      enableRemoteAccess: $checkedConvert(
        'EnableRemoteAccess',
        (v) => v as bool?,
      ),
      localNetworkSubnets: $checkedConvert(
        'LocalNetworkSubnets',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      localNetworkAddresses: $checkedConvert(
        'LocalNetworkAddresses',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      knownProxies: $checkedConvert(
        'KnownProxies',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      ignoreVirtualInterfaces: $checkedConvert(
        'IgnoreVirtualInterfaces',
        (v) => v as bool?,
      ),
      virtualInterfaceNames: $checkedConvert(
        'VirtualInterfaceNames',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      enablePublishedServerUriByRequest: $checkedConvert(
        'EnablePublishedServerUriByRequest',
        (v) => v as bool?,
      ),
      publishedServerUriBySubnet: $checkedConvert(
        'PublishedServerUriBySubnet',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      remoteIPFilter: $checkedConvert(
        'RemoteIPFilter',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      isRemoteIPFilterBlacklist: $checkedConvert(
        'IsRemoteIPFilterBlacklist',
        (v) => v as bool?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'baseUrl': 'BaseUrl',
    'enableHttps': 'EnableHttps',
    'requireHttps': 'RequireHttps',
    'certificatePath': 'CertificatePath',
    'certificatePassword': 'CertificatePassword',
    'internalHttpPort': 'InternalHttpPort',
    'internalHttpsPort': 'InternalHttpsPort',
    'publicHttpPort': 'PublicHttpPort',
    'publicHttpsPort': 'PublicHttpsPort',
    'autoDiscovery': 'AutoDiscovery',
    'enableUPnP': 'EnableUPnP',
    'enableIPv4': 'EnableIPv4',
    'enableIPv6': 'EnableIPv6',
    'enableRemoteAccess': 'EnableRemoteAccess',
    'localNetworkSubnets': 'LocalNetworkSubnets',
    'localNetworkAddresses': 'LocalNetworkAddresses',
    'knownProxies': 'KnownProxies',
    'ignoreVirtualInterfaces': 'IgnoreVirtualInterfaces',
    'virtualInterfaceNames': 'VirtualInterfaceNames',
    'enablePublishedServerUriByRequest': 'EnablePublishedServerUriByRequest',
    'publishedServerUriBySubnet': 'PublishedServerUriBySubnet',
    'remoteIPFilter': 'RemoteIPFilter',
    'isRemoteIPFilterBlacklist': 'IsRemoteIPFilterBlacklist',
  },
);

Map<String, dynamic> _$NetworkConfigurationToJson(
  NetworkConfiguration instance,
) => <String, dynamic>{
  'BaseUrl': ?instance.baseUrl,
  'EnableHttps': ?instance.enableHttps,
  'RequireHttps': ?instance.requireHttps,
  'CertificatePath': ?instance.certificatePath,
  'CertificatePassword': ?instance.certificatePassword,
  'InternalHttpPort': ?instance.internalHttpPort,
  'InternalHttpsPort': ?instance.internalHttpsPort,
  'PublicHttpPort': ?instance.publicHttpPort,
  'PublicHttpsPort': ?instance.publicHttpsPort,
  'AutoDiscovery': ?instance.autoDiscovery,
  'EnableUPnP': ?instance.enableUPnP,
  'EnableIPv4': ?instance.enableIPv4,
  'EnableIPv6': ?instance.enableIPv6,
  'EnableRemoteAccess': ?instance.enableRemoteAccess,
  'LocalNetworkSubnets': ?instance.localNetworkSubnets,
  'LocalNetworkAddresses': ?instance.localNetworkAddresses,
  'KnownProxies': ?instance.knownProxies,
  'IgnoreVirtualInterfaces': ?instance.ignoreVirtualInterfaces,
  'VirtualInterfaceNames': ?instance.virtualInterfaceNames,
  'EnablePublishedServerUriByRequest':
      ?instance.enablePublishedServerUriByRequest,
  'PublishedServerUriBySubnet': ?instance.publishedServerUriBySubnet,
  'RemoteIPFilter': ?instance.remoteIPFilter,
  'IsRemoteIPFilterBlacklist': ?instance.isRemoteIPFilterBlacklist,
};
