//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'network_configuration.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NetworkConfiguration {
  /// Returns a new [NetworkConfiguration] instance.
  NetworkConfiguration({

     this.baseUrl,

     this.enableHttps,

     this.requireHttps,

     this.certificatePath,

     this.certificatePassword,

     this.internalHttpPort,

     this.internalHttpsPort,

     this.publicHttpPort,

     this.publicHttpsPort,

     this.autoDiscovery,

     this.enableUPnP,

     this.enableIPv4,

     this.enableIPv6,

     this.enableRemoteAccess,

     this.localNetworkSubnets,

     this.localNetworkAddresses,

     this.knownProxies,

     this.ignoreVirtualInterfaces,

     this.virtualInterfaceNames,

     this.enablePublishedServerUriByRequest,

     this.publishedServerUriBySubnet,

     this.remoteIPFilter,

     this.isRemoteIPFilterBlacklist,
  });

      /// Gets or sets a value used to specify the URL prefix that your Jellyfin instance can be accessed at.
  @JsonKey(
    
    name: r'BaseUrl',
    required: false,
    includeIfNull: false,
  )


  final String? baseUrl;



      /// Gets or sets a value indicating whether to use HTTPS.
  @JsonKey(
    
    name: r'EnableHttps',
    required: false,
    includeIfNull: false,
  )


  final bool? enableHttps;



      /// Gets or sets a value indicating whether the server should force connections over HTTPS.
  @JsonKey(
    
    name: r'RequireHttps',
    required: false,
    includeIfNull: false,
  )


  final bool? requireHttps;



      /// Gets or sets the filesystem path of an X.509 certificate to use for SSL.
  @JsonKey(
    
    name: r'CertificatePath',
    required: false,
    includeIfNull: false,
  )


  final String? certificatePath;



      /// Gets or sets the password required to access the X.509 certificate data in the file specified by MediaBrowser.Common.Net.NetworkConfiguration.CertificatePath.
  @JsonKey(
    
    name: r'CertificatePassword',
    required: false,
    includeIfNull: false,
  )


  final String? certificatePassword;



      /// Gets or sets the internal HTTP server port.
  @JsonKey(
    
    name: r'InternalHttpPort',
    required: false,
    includeIfNull: false,
  )


  final int? internalHttpPort;



      /// Gets or sets the internal HTTPS server port.
  @JsonKey(
    
    name: r'InternalHttpsPort',
    required: false,
    includeIfNull: false,
  )


  final int? internalHttpsPort;



      /// Gets or sets the public HTTP port.
  @JsonKey(
    
    name: r'PublicHttpPort',
    required: false,
    includeIfNull: false,
  )


  final int? publicHttpPort;



      /// Gets or sets the public HTTPS port.
  @JsonKey(
    
    name: r'PublicHttpsPort',
    required: false,
    includeIfNull: false,
  )


  final int? publicHttpsPort;



      /// Gets or sets a value indicating whether Autodiscovery is enabled.
  @JsonKey(
    
    name: r'AutoDiscovery',
    required: false,
    includeIfNull: false,
  )


  final bool? autoDiscovery;



      /// Gets or sets a value indicating whether to enable automatic port forwarding.
  @Deprecated('enableUPnP has been deprecated')
  @JsonKey(
    
    name: r'EnableUPnP',
    required: false,
    includeIfNull: false,
  )


  final bool? enableUPnP;



      /// Gets or sets a value indicating whether IPv6 is enabled.
  @JsonKey(
    
    name: r'EnableIPv4',
    required: false,
    includeIfNull: false,
  )


  final bool? enableIPv4;



      /// Gets or sets a value indicating whether IPv6 is enabled.
  @JsonKey(
    
    name: r'EnableIPv6',
    required: false,
    includeIfNull: false,
  )


  final bool? enableIPv6;



      /// Gets or sets a value indicating whether access from outside of the LAN is permitted.
  @JsonKey(
    
    name: r'EnableRemoteAccess',
    required: false,
    includeIfNull: false,
  )


  final bool? enableRemoteAccess;



      /// Gets or sets the subnets that are deemed to make up the LAN.
  @JsonKey(
    
    name: r'LocalNetworkSubnets',
    required: false,
    includeIfNull: false,
  )


  final List<String>? localNetworkSubnets;



      /// Gets or sets the interface addresses which Jellyfin will bind to. If empty, all interfaces will be used.
  @JsonKey(
    
    name: r'LocalNetworkAddresses',
    required: false,
    includeIfNull: false,
  )


  final List<String>? localNetworkAddresses;



      /// Gets or sets the known proxies.
  @JsonKey(
    
    name: r'KnownProxies',
    required: false,
    includeIfNull: false,
  )


  final List<String>? knownProxies;



      /// Gets or sets a value indicating whether address names that match MediaBrowser.Common.Net.NetworkConfiguration.VirtualInterfaceNames should be ignored for the purposes of binding.
  @JsonKey(
    
    name: r'IgnoreVirtualInterfaces',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreVirtualInterfaces;



      /// Gets or sets a value indicating the interface name prefixes that should be ignored. The list can be comma separated and values are case-insensitive. <seealso cref=\"P:MediaBrowser.Common.Net.NetworkConfiguration.IgnoreVirtualInterfaces\" />.
  @JsonKey(
    
    name: r'VirtualInterfaceNames',
    required: false,
    includeIfNull: false,
  )


  final List<String>? virtualInterfaceNames;



      /// Gets or sets a value indicating whether the published server uri is based on information in HTTP requests.
  @JsonKey(
    
    name: r'EnablePublishedServerUriByRequest',
    required: false,
    includeIfNull: false,
  )


  final bool? enablePublishedServerUriByRequest;



      /// Gets or sets the PublishedServerUriBySubnet  Gets or sets PublishedServerUri to advertise for specific subnets.
  @JsonKey(
    
    name: r'PublishedServerUriBySubnet',
    required: false,
    includeIfNull: false,
  )


  final List<String>? publishedServerUriBySubnet;



      /// Gets or sets the filter for remote IP connectivity. Used in conjunction with <seealso cref=\"P:MediaBrowser.Common.Net.NetworkConfiguration.IsRemoteIPFilterBlacklist\" />.
  @JsonKey(
    
    name: r'RemoteIPFilter',
    required: false,
    includeIfNull: false,
  )


  final List<String>? remoteIPFilter;



      /// Gets or sets a value indicating whether <seealso cref=\"P:MediaBrowser.Common.Net.NetworkConfiguration.RemoteIPFilter\" /> contains a blacklist or a whitelist. Default is a whitelist.
  @JsonKey(
    
    name: r'IsRemoteIPFilterBlacklist',
    required: false,
    includeIfNull: false,
  )


  final bool? isRemoteIPFilterBlacklist;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NetworkConfiguration &&
      other.baseUrl == baseUrl &&
      other.enableHttps == enableHttps &&
      other.requireHttps == requireHttps &&
      other.certificatePath == certificatePath &&
      other.certificatePassword == certificatePassword &&
      other.internalHttpPort == internalHttpPort &&
      other.internalHttpsPort == internalHttpsPort &&
      other.publicHttpPort == publicHttpPort &&
      other.publicHttpsPort == publicHttpsPort &&
      other.autoDiscovery == autoDiscovery &&
      other.enableUPnP == enableUPnP &&
      other.enableIPv4 == enableIPv4 &&
      other.enableIPv6 == enableIPv6 &&
      other.enableRemoteAccess == enableRemoteAccess &&
      other.localNetworkSubnets == localNetworkSubnets &&
      other.localNetworkAddresses == localNetworkAddresses &&
      other.knownProxies == knownProxies &&
      other.ignoreVirtualInterfaces == ignoreVirtualInterfaces &&
      other.virtualInterfaceNames == virtualInterfaceNames &&
      other.enablePublishedServerUriByRequest == enablePublishedServerUriByRequest &&
      other.publishedServerUriBySubnet == publishedServerUriBySubnet &&
      other.remoteIPFilter == remoteIPFilter &&
      other.isRemoteIPFilterBlacklist == isRemoteIPFilterBlacklist;

    @override
    int get hashCode =>
        baseUrl.hashCode +
        enableHttps.hashCode +
        requireHttps.hashCode +
        certificatePath.hashCode +
        certificatePassword.hashCode +
        internalHttpPort.hashCode +
        internalHttpsPort.hashCode +
        publicHttpPort.hashCode +
        publicHttpsPort.hashCode +
        autoDiscovery.hashCode +
        enableUPnP.hashCode +
        enableIPv4.hashCode +
        enableIPv6.hashCode +
        enableRemoteAccess.hashCode +
        localNetworkSubnets.hashCode +
        localNetworkAddresses.hashCode +
        knownProxies.hashCode +
        ignoreVirtualInterfaces.hashCode +
        virtualInterfaceNames.hashCode +
        enablePublishedServerUriByRequest.hashCode +
        publishedServerUriBySubnet.hashCode +
        remoteIPFilter.hashCode +
        isRemoteIPFilterBlacklist.hashCode;

  factory NetworkConfiguration.fromJson(Map<String, dynamic> json) => _$NetworkConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkConfigurationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

