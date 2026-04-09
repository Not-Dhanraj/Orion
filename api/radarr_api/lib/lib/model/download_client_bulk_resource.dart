//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/apply_tags.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'download_client_bulk_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DownloadClientBulkResource {
  /// Returns a new [DownloadClientBulkResource] instance.
  DownloadClientBulkResource({

     this.ids,

     this.tags,

     this.applyTags,

     this.enable,

     this.priority,

     this.removeCompletedDownloads,

     this.removeFailedDownloads,
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
    
    name: r'enable',
    required: false,
    includeIfNull: false,
  )


  final bool? enable;



  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false,
  )


  final int? priority;



  @JsonKey(
    
    name: r'removeCompletedDownloads',
    required: false,
    includeIfNull: false,
  )


  final bool? removeCompletedDownloads;



  @JsonKey(
    
    name: r'removeFailedDownloads',
    required: false,
    includeIfNull: false,
  )


  final bool? removeFailedDownloads;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DownloadClientBulkResource &&
      other.ids == ids &&
      other.tags == tags &&
      other.applyTags == applyTags &&
      other.enable == enable &&
      other.priority == priority &&
      other.removeCompletedDownloads == removeCompletedDownloads &&
      other.removeFailedDownloads == removeFailedDownloads;

    @override
    int get hashCode =>
        (ids == null ? 0 : ids.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        applyTags.hashCode +
        (enable == null ? 0 : enable.hashCode) +
        (priority == null ? 0 : priority.hashCode) +
        (removeCompletedDownloads == null ? 0 : removeCompletedDownloads.hashCode) +
        (removeFailedDownloads == null ? 0 : removeFailedDownloads.hashCode);

  factory DownloadClientBulkResource.fromJson(Map<String, dynamic> json) => _$DownloadClientBulkResourceFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadClientBulkResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

