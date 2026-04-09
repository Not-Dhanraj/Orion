//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_path_mapping_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemotePathMappingResource {
  /// Returns a new [RemotePathMappingResource] instance.
  RemotePathMappingResource({

     this.id,

     this.host,

     this.remotePath,

     this.localPath,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'host',
    required: false,
    includeIfNull: false,
  )


  final String? host;



  @JsonKey(
    
    name: r'remotePath',
    required: false,
    includeIfNull: false,
  )


  final String? remotePath;



  @JsonKey(
    
    name: r'localPath',
    required: false,
    includeIfNull: false,
  )


  final String? localPath;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RemotePathMappingResource &&
      other.id == id &&
      other.host == host &&
      other.remotePath == remotePath &&
      other.localPath == localPath;

    @override
    int get hashCode =>
        id.hashCode +
        (host == null ? 0 : host.hashCode) +
        (remotePath == null ? 0 : remotePath.hashCode) +
        (localPath == null ? 0 : localPath.hashCode);

  factory RemotePathMappingResource.fromJson(Map<String, dynamic> json) => _$RemotePathMappingResourceFromJson(json);

  Map<String, dynamic> toJson() => _$RemotePathMappingResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

