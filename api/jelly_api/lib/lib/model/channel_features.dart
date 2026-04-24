//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/channel_media_content_type.dart';
import 'package:jelly_api/lib/model/channel_media_type.dart';
import 'package:jelly_api/lib/model/channel_item_sort_field.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_features.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChannelFeatures {
  /// Returns a new [ChannelFeatures] instance.
  ChannelFeatures({

     this.name,

     this.id,

     this.canSearch,

     this.mediaTypes,

     this.contentTypes,

     this.maxPageSize,

     this.autoRefreshLevels,

     this.defaultSortFields,

     this.supportsSortOrderToggle,

     this.supportsLatestMedia,

     this.canFilter,

     this.supportsContentDownloading,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets a value indicating whether this instance can search.
  @JsonKey(
    
    name: r'CanSearch',
    required: false,
    includeIfNull: false,
  )


  final bool? canSearch;



      /// Gets or sets the media types.
  @JsonKey(
    
    name: r'MediaTypes',
    required: false,
    includeIfNull: false,
  )


  final List<ChannelMediaType>? mediaTypes;



      /// Gets or sets the content types.
  @JsonKey(
    
    name: r'ContentTypes',
    required: false,
    includeIfNull: false,
  )


  final List<ChannelMediaContentType>? contentTypes;



      /// Gets or sets the maximum number of records the channel allows retrieving at a time.
  @JsonKey(
    
    name: r'MaxPageSize',
    required: false,
    includeIfNull: false,
  )


  final int? maxPageSize;



      /// Gets or sets the automatic refresh levels.
  @JsonKey(
    
    name: r'AutoRefreshLevels',
    required: false,
    includeIfNull: false,
  )


  final int? autoRefreshLevels;



      /// Gets or sets the default sort orders.
  @JsonKey(
    
    name: r'DefaultSortFields',
    required: false,
    includeIfNull: false,
  )


  final List<ChannelItemSortField>? defaultSortFields;



      /// Gets or sets a value indicating whether a sort ascending/descending toggle is supported.
  @JsonKey(
    
    name: r'SupportsSortOrderToggle',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsSortOrderToggle;



      /// Gets or sets a value indicating whether [supports latest media].
  @JsonKey(
    
    name: r'SupportsLatestMedia',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsLatestMedia;



      /// Gets or sets a value indicating whether this instance can filter.
  @JsonKey(
    
    name: r'CanFilter',
    required: false,
    includeIfNull: false,
  )


  final bool? canFilter;



      /// Gets or sets a value indicating whether [supports content downloading].
  @JsonKey(
    
    name: r'SupportsContentDownloading',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsContentDownloading;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChannelFeatures &&
      other.name == name &&
      other.id == id &&
      other.canSearch == canSearch &&
      other.mediaTypes == mediaTypes &&
      other.contentTypes == contentTypes &&
      other.maxPageSize == maxPageSize &&
      other.autoRefreshLevels == autoRefreshLevels &&
      other.defaultSortFields == defaultSortFields &&
      other.supportsSortOrderToggle == supportsSortOrderToggle &&
      other.supportsLatestMedia == supportsLatestMedia &&
      other.canFilter == canFilter &&
      other.supportsContentDownloading == supportsContentDownloading;

    @override
    int get hashCode =>
        name.hashCode +
        id.hashCode +
        canSearch.hashCode +
        mediaTypes.hashCode +
        contentTypes.hashCode +
        (maxPageSize == null ? 0 : maxPageSize.hashCode) +
        (autoRefreshLevels == null ? 0 : autoRefreshLevels.hashCode) +
        defaultSortFields.hashCode +
        supportsSortOrderToggle.hashCode +
        supportsLatestMedia.hashCode +
        canFilter.hashCode +
        supportsContentDownloading.hashCode;

  factory ChannelFeatures.fromJson(Map<String, dynamic> json) => _$ChannelFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelFeaturesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

