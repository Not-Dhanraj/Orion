//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/update_changes.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateResource {
  /// Returns a new [UpdateResource] instance.
  UpdateResource({

     this.id,

     this.version,

     this.branch,

     this.releaseDate,

     this.fileName,

     this.url,

     this.installed,

     this.installedOn,

     this.installable,

     this.latest,

     this.changes,

     this.hash,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false,
  )


  final String? version;



  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final String? branch;



  @JsonKey(
    
    name: r'releaseDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? releaseDate;



  @JsonKey(
    
    name: r'fileName',
    required: false,
    includeIfNull: false,
  )


  final String? fileName;



  @JsonKey(
    
    name: r'url',
    required: false,
    includeIfNull: false,
  )


  final String? url;



  @JsonKey(
    
    name: r'installed',
    required: false,
    includeIfNull: false,
  )


  final bool? installed;



  @JsonKey(
    
    name: r'installedOn',
    required: false,
    includeIfNull: false,
  )


  final DateTime? installedOn;



  @JsonKey(
    
    name: r'installable',
    required: false,
    includeIfNull: false,
  )


  final bool? installable;



  @JsonKey(
    
    name: r'latest',
    required: false,
    includeIfNull: false,
  )


  final bool? latest;



  @JsonKey(
    
    name: r'changes',
    required: false,
    includeIfNull: false,
  )


  final UpdateChanges? changes;



  @JsonKey(
    
    name: r'hash',
    required: false,
    includeIfNull: false,
  )


  final String? hash;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateResource &&
      other.id == id &&
      other.version == version &&
      other.branch == branch &&
      other.releaseDate == releaseDate &&
      other.fileName == fileName &&
      other.url == url &&
      other.installed == installed &&
      other.installedOn == installedOn &&
      other.installable == installable &&
      other.latest == latest &&
      other.changes == changes &&
      other.hash == hash;

    @override
    int get hashCode =>
        id.hashCode +
        (version == null ? 0 : version.hashCode) +
        (branch == null ? 0 : branch.hashCode) +
        releaseDate.hashCode +
        (fileName == null ? 0 : fileName.hashCode) +
        (url == null ? 0 : url.hashCode) +
        installed.hashCode +
        (installedOn == null ? 0 : installedOn.hashCode) +
        installable.hashCode +
        latest.hashCode +
        changes.hashCode +
        (hash == null ? 0 : hash.hashCode);

  factory UpdateResource.fromJson(Map<String, dynamic> json) => _$UpdateResourceFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

