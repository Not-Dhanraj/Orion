//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/apply_tags.dart';
import 'package:radarr_api/lib/model/movie_status_type.dart';
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

     this.enabled,

     this.enableAuto,

     this.rootFolderPath,

     this.qualityProfileId,

     this.minimumAvailability,
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
    
    name: r'enabled',
    required: false,
    includeIfNull: false,
  )


  final bool? enabled;



  @JsonKey(
    
    name: r'enableAuto',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAuto;



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



  @JsonKey(
    
    name: r'minimumAvailability',
    required: false,
    includeIfNull: false,
  )


  final MovieStatusType? minimumAvailability;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportListBulkResource &&
      other.ids == ids &&
      other.tags == tags &&
      other.applyTags == applyTags &&
      other.enabled == enabled &&
      other.enableAuto == enableAuto &&
      other.rootFolderPath == rootFolderPath &&
      other.qualityProfileId == qualityProfileId &&
      other.minimumAvailability == minimumAvailability;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        applyTags.hashCode +
        (enabled == null ? 0 : enabled.hashCode) +
        (enableAuto == null ? 0 : enableAuto.hashCode) +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        (qualityProfileId == null ? 0 : qualityProfileId.hashCode) +
        minimumAvailability.hashCode;

  factory ImportListBulkResource.fromJson(Map<String, dynamic> json) => _$ImportListBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportListBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

