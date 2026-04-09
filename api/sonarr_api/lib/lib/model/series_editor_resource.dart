//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/apply_tags.dart';
import 'package:sonarr_api/lib/model/series_types.dart';
import 'package:sonarr_api/lib/model/new_item_monitor_types.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'series_editor_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeriesEditorResource {
  /// Returns a new [SeriesEditorResource] instance.
  SeriesEditorResource({

     this.seriesIds,

     this.monitored,

     this.monitorNewItems,

     this.qualityProfileId,

     this.seriesType,

     this.seasonFolder,

     this.rootFolderPath,

     this.tags,

     this.applyTags,

     this.moveFiles,

     this.deleteFiles,

     this.addImportListExclusion,
  });

  @JsonKey(
    
    name: r'seriesIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? seriesIds;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



  @JsonKey(
    
    name: r'monitorNewItems',
    required: false,
    includeIfNull: false,
  )


  final NewItemMonitorTypes? monitorNewItems;



  @JsonKey(
    
    name: r'qualityProfileId',
    required: false,
    includeIfNull: false,
  )


  final int? qualityProfileId;



  @JsonKey(
    
    name: r'seriesType',
    required: false,
    includeIfNull: false,
  )


  final SeriesTypes? seriesType;



  @JsonKey(
    
    name: r'seasonFolder',
    required: false,
    includeIfNull: false,
  )


  final bool? seasonFolder;



  @JsonKey(
    
    name: r'rootFolderPath',
    required: false,
    includeIfNull: false,
  )


  final String? rootFolderPath;



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
    
    name: r'moveFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? moveFiles;



  @JsonKey(
    
    name: r'deleteFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? deleteFiles;



  @JsonKey(
    
    name: r'addImportListExclusion',
    required: false,
    includeIfNull: false,
  )


  final bool? addImportListExclusion;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeriesEditorResource &&
      other.seriesIds == seriesIds &&
      other.monitored == monitored &&
      other.monitorNewItems == monitorNewItems &&
      other.qualityProfileId == qualityProfileId &&
      other.seriesType == seriesType &&
      other.seasonFolder == seasonFolder &&
      other.rootFolderPath == rootFolderPath &&
      other.tags == tags &&
      other.applyTags == applyTags &&
      other.moveFiles == moveFiles &&
      other.deleteFiles == deleteFiles &&
      other.addImportListExclusion == addImportListExclusion;

    @override
    int get hashCode =>
        (seriesIds == null ? 0 : seriesIds.hashCode) +
        (monitored == null ? 0 : monitored.hashCode) +
        monitorNewItems.hashCode +
        (qualityProfileId == null ? 0 : qualityProfileId.hashCode) +
        seriesType.hashCode +
        (seasonFolder == null ? 0 : seasonFolder.hashCode) +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        applyTags.hashCode +
        moveFiles.hashCode +
        deleteFiles.hashCode +
        addImportListExclusion.hashCode;

  factory SeriesEditorResource.fromJson(Map<String, dynamic> json) => _$SeriesEditorResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesEditorResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

