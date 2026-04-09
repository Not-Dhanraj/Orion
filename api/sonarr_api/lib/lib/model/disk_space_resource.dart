//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'disk_space_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DiskSpaceResource {
  /// Returns a new [DiskSpaceResource] instance.
  DiskSpaceResource({

     this.id,

     this.path,

     this.label,

     this.freeSpace,

     this.totalSpace,
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
    
    name: r'label',
    required: false,
    includeIfNull: false,
  )


  final String? label;



  @JsonKey(
    
    name: r'freeSpace',
    required: false,
    includeIfNull: false,
  )


  final int? freeSpace;



  @JsonKey(
    
    name: r'totalSpace',
    required: false,
    includeIfNull: false,
  )


  final int? totalSpace;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DiskSpaceResource &&
      other.id == id &&
      other.path == path &&
      other.label == label &&
      other.freeSpace == freeSpace &&
      other.totalSpace == totalSpace;

    @override
    int get hashCode =>
        id.hashCode +
        (path == null ? 0 : path.hashCode) +
        (label == null ? 0 : label.hashCode) +
        freeSpace.hashCode +
        totalSpace.hashCode;

  factory DiskSpaceResource.fromJson(Map<String, dynamic> json) => _$DiskSpaceResourceFromJson(json);

  Map<String, dynamic> toJson() => _$DiskSpaceResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

