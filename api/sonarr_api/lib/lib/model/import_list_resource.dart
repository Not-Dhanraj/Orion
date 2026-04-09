//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/series_types.dart';
import 'package:sonarr_api/lib/model/import_list_type.dart';
import 'package:sonarr_api/lib/model/new_item_monitor_types.dart';
import 'package:sonarr_api/lib/model/monitor_types.dart';
import 'package:sonarr_api/lib/model/field.dart';
import 'package:sonarr_api/lib/model/provider_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_list_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportListResource {
  /// Returns a new [ImportListResource] instance.
  ImportListResource({

     this.id,

     this.name,

     this.fields,

     this.implementationName,

     this.implementation,

     this.configContract,

     this.infoLink,

     this.message,

     this.tags,

     this.presets,

     this.enableAutomaticAdd,

     this.searchForMissingEpisodes,

     this.shouldMonitor,

     this.monitorNewItems,

     this.rootFolderPath,

     this.qualityProfileId,

     this.seriesType,

     this.seasonFolder,

     this.listType,

     this.listOrder,

     this.minRefreshInterval,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'fields',
    required: false,
    includeIfNull: false,
  )


  final List<Field>? fields;



  @JsonKey(
    
    name: r'implementationName',
    required: false,
    includeIfNull: false,
  )


  final String? implementationName;



  @JsonKey(
    
    name: r'implementation',
    required: false,
    includeIfNull: false,
  )


  final String? implementation;



  @JsonKey(
    
    name: r'configContract',
    required: false,
    includeIfNull: false,
  )


  final String? configContract;



  @JsonKey(
    
    name: r'infoLink',
    required: false,
    includeIfNull: false,
  )


  final String? infoLink;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final ProviderMessage? message;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;



  @JsonKey(
    
    name: r'presets',
    required: false,
    includeIfNull: false,
  )


  final List<ImportListResource>? presets;



  @JsonKey(
    
    name: r'enableAutomaticAdd',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAutomaticAdd;



  @JsonKey(
    
    name: r'searchForMissingEpisodes',
    required: false,
    includeIfNull: false,
  )


  final bool? searchForMissingEpisodes;



  @JsonKey(
    
    name: r'shouldMonitor',
    required: false,
    includeIfNull: false,
  )


  final MonitorTypes? shouldMonitor;



  @JsonKey(
    
    name: r'monitorNewItems',
    required: false,
    includeIfNull: false,
  )


  final NewItemMonitorTypes? monitorNewItems;



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
    
    name: r'listType',
    required: false,
    includeIfNull: false,
  )


  final ImportListType? listType;



  @JsonKey(
    
    name: r'listOrder',
    required: false,
    includeIfNull: false,
  )


  final int? listOrder;



  @JsonKey(
    
    name: r'minRefreshInterval',
    required: false,
    includeIfNull: false,
  )


  final String? minRefreshInterval;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportListResource &&
      other.id == id &&
      other.name == name &&
      other.fields == fields &&
      other.implementationName == implementationName &&
      other.implementation == implementation &&
      other.configContract == configContract &&
      other.infoLink == infoLink &&
      other.message == message &&
      other.tags == tags &&
      other.presets == presets &&
      other.enableAutomaticAdd == enableAutomaticAdd &&
      other.searchForMissingEpisodes == searchForMissingEpisodes &&
      other.shouldMonitor == shouldMonitor &&
      other.monitorNewItems == monitorNewItems &&
      other.rootFolderPath == rootFolderPath &&
      other.qualityProfileId == qualityProfileId &&
      other.seriesType == seriesType &&
      other.seasonFolder == seasonFolder &&
      other.listType == listType &&
      other.listOrder == listOrder &&
      other.minRefreshInterval == minRefreshInterval;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (fields == null ? 0 : fields.hashCode) +
        (implementationName == null ? 0 : implementationName.hashCode) +
        (implementation == null ? 0 : implementation.hashCode) +
        (configContract == null ? 0 : configContract.hashCode) +
        (infoLink == null ? 0 : infoLink.hashCode) +
        message.hashCode +
        (tags == null ? 0 : tags.hashCode) +
        (presets == null ? 0 : presets.hashCode) +
        enableAutomaticAdd.hashCode +
        searchForMissingEpisodes.hashCode +
        shouldMonitor.hashCode +
        monitorNewItems.hashCode +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        qualityProfileId.hashCode +
        seriesType.hashCode +
        seasonFolder.hashCode +
        listType.hashCode +
        listOrder.hashCode +
        minRefreshInterval.hashCode;

  factory ImportListResource.fromJson(Map<String, dynamic> json) => _$ImportListResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportListResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

