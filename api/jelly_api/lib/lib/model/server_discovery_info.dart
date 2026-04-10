//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'server_discovery_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerDiscoveryInfo {
  /// Returns a new [ServerDiscoveryInfo] instance.
  ServerDiscoveryInfo({

     this.address,

     this.id,

     this.name,

     this.endpointAddress,
  });

      /// Gets the address.
  @JsonKey(
    
    name: r'Address',
    required: false,
    includeIfNull: false,
  )


  final String? address;



      /// Gets the server identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets the endpoint address.
  @JsonKey(
    
    name: r'EndpointAddress',
    required: false,
    includeIfNull: false,
  )


  final String? endpointAddress;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ServerDiscoveryInfo &&
      other.address == address &&
      other.id == id &&
      other.name == name &&
      other.endpointAddress == endpointAddress;

    @override
    int get hashCode =>
        address.hashCode +
        id.hashCode +
        name.hashCode +
        (endpointAddress == null ? 0 : endpointAddress.hashCode);

  factory ServerDiscoveryInfo.fromJson(Map<String, dynamic> json) => _$ServerDiscoveryInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ServerDiscoveryInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

