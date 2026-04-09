//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/unmapped_folder.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'root_folder_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RootFolderResource {
  /// Returns a new [RootFolderResource] instance.
  RootFolderResource({

     this.id,

     this.path,

     this.accessible,

     this.freeSpace,

     this.unmappedFolders,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'accessible',
    required: false,
    includeIfNull: false,
  )


  final bool? accessible;



  @JsonKey(
    
    name: r'freeSpace',
    required: false,
    includeIfNull: false,
  )


  final int? freeSpace;



  @JsonKey(
    
    name: r'unmappedFolders',
    required: false,
    includeIfNull: false,
  )


  final List<UnmappedFolder>? unmappedFolders;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RootFolderResource &&
      other.id == id &&
      other.path == path &&
      other.accessible == accessible &&
      other.freeSpace == freeSpace &&
      other.unmappedFolders == unmappedFolders;

    @override
    int get hashCode =>
        id.hashCode +
        (path == null ? 0 : path.hashCode) +
        accessible.hashCode +
        (freeSpace == null ? 0 : freeSpace.hashCode) +
        (unmappedFolders == null ? 0 : unmappedFolders.hashCode);

  factory RootFolderResource.fromJson(Map<String, dynamic> json) => _$RootFolderResourceFromJson(json);

  Map<String, dynamic> toJson() => _$RootFolderResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

