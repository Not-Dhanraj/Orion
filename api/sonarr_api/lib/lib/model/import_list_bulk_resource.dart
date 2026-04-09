//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/apply_tags.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_list_bulk_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportListBulkResource {
  /// Returns a new [ImportListBulkResource] instance.
  ImportListBulkResource({

     this.ids,

     this.tags,

     this.applyTags,

     this.enableAutomaticAdd,

     this.rootFolderPath,

     this.qualityProfileId,
  });

  @JsonKey(
    
    name: r'ids',
    required: false,
    includeIfNull: false,
  )


  final List<int>? ids;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final List<int>? tags;



  @JsonKey(
    
    name: r'applyTags',
    required: false,
    includeIfNull: false,
  )


  final ApplyTags? applyTags;



  @JsonKey(
    
    name: r'enableAutomaticAdd',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAutomaticAdd;



  @JsonKey(
    
    name: r'rootFolderPath',
    required: false,
    includeIfNull: false,
  )


  final String? rootFolderPath;



  @JsonKey(
    
    name: r'qualityProfileId',
    required: false,
    includeIfNull: false,
  )


  final int? qualityProfileId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportListBulkResource &&
      other.ids == ids &&
      other.tags == tags &&
      other.applyTags == applyTags &&
      other.enableAutomaticAdd == enableAutomaticAdd &&
      other.rootFolderPath == rootFolderPath &&
      other.qualityProfileId == qualityProfileId;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        applyTags.hashCode +
        (enableAutomaticAdd == null ? 0 : enableAutomaticAdd.hashCode) +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        (qualityProfileId == null ? 0 : qualityProfileId.hashCode);

  factory ImportListBulkResource.fromJson(Map<String, dynamic> json) => _$ImportListBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportListBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

