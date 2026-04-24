//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/sort_order.dart';
import 'package:jelly_api/lib/model/scroll_direction.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'display_preferences_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DisplayPreferencesDto {
  /// Returns a new [DisplayPreferencesDto] instance.
  DisplayPreferencesDto({

     this.id,

     this.viewType,

     this.sortBy,

     this.indexBy,

     this.rememberIndexing,

     this.primaryImageHeight,

     this.primaryImageWidth,

     this.customPrefs,

     this.scrollDirection,

     this.showBackdrop,

     this.rememberSorting,

     this.sortOrder,

     this.showSidebar,

     this.client,
  });

      /// Gets or sets the user id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the type of the view.
  @JsonKey(
    
    name: r'ViewType',
    required: false,
    includeIfNull: false,
  )


  final String? viewType;



      /// Gets or sets the sort by.
  @JsonKey(
    
    name: r'SortBy',
    required: false,
    includeIfNull: false,
  )


  final String? sortBy;



      /// Gets or sets the index by.
  @JsonKey(
    
    name: r'IndexBy',
    required: false,
    includeIfNull: false,
  )


  final String? indexBy;



      /// Gets or sets a value indicating whether [remember indexing].
  @JsonKey(
    
    name: r'RememberIndexing',
    required: false,
    includeIfNull: false,
  )


  final bool? rememberIndexing;



      /// Gets or sets the height of the primary image.
  @JsonKey(
    
    name: r'PrimaryImageHeight',
    required: false,
    includeIfNull: false,
  )


  final int? primaryImageHeight;



      /// Gets or sets the width of the primary image.
  @JsonKey(
    
    name: r'PrimaryImageWidth',
    required: false,
    includeIfNull: false,
  )


  final int? primaryImageWidth;



      /// Gets or sets the custom prefs.
  @JsonKey(
    
    name: r'CustomPrefs',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? customPrefs;



      /// Gets or sets the scroll direction.
  @JsonKey(
    
    name: r'ScrollDirection',
    required: false,
    includeIfNull: false,
  )


  final ScrollDirection? scrollDirection;



      /// Gets or sets a value indicating whether to show backdrops on this item.
  @JsonKey(
    
    name: r'ShowBackdrop',
    required: false,
    includeIfNull: false,
  )


  final bool? showBackdrop;



      /// Gets or sets a value indicating whether [remember sorting].
  @JsonKey(
    
    name: r'RememberSorting',
    required: false,
    includeIfNull: false,
  )


  final bool? rememberSorting;



      /// Gets or sets the sort order.
  @JsonKey(
    
    name: r'SortOrder',
    required: false,
    includeIfNull: false,
  )


  final SortOrder? sortOrder;



      /// Gets or sets a value indicating whether [show sidebar].
  @JsonKey(
    
    name: r'ShowSidebar',
    required: false,
    includeIfNull: false,
  )


  final bool? showSidebar;



      /// Gets or sets the client.
  @JsonKey(
    
    name: r'Client',
    required: false,
    includeIfNull: false,
  )


  final String? client;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DisplayPreferencesDto &&
      other.id == id &&
      other.viewType == viewType &&
      other.sortBy == sortBy &&
      other.indexBy == indexBy &&
      other.rememberIndexing == rememberIndexing &&
      other.primaryImageHeight == primaryImageHeight &&
      other.primaryImageWidth == primaryImageWidth &&
      other.customPrefs == customPrefs &&
      other.scrollDirection == scrollDirection &&
      other.showBackdrop == showBackdrop &&
      other.rememberSorting == rememberSorting &&
      other.sortOrder == sortOrder &&
      other.showSidebar == showSidebar &&
      other.client == client;

    @override
    int get hashCode =>
        (id == null ? 0 : id.hashCode) +
        (viewType == null ? 0 : viewType.hashCode) +
        (sortBy == null ? 0 : sortBy.hashCode) +
        (indexBy == null ? 0 : indexBy.hashCode) +
        rememberIndexing.hashCode +
        primaryImageHeight.hashCode +
        primaryImageWidth.hashCode +
        customPrefs.hashCode +
        scrollDirection.hashCode +
        showBackdrop.hashCode +
        rememberSorting.hashCode +
        sortOrder.hashCode +
        showSidebar.hashCode +
        (client == null ? 0 : client.hashCode);

  factory DisplayPreferencesDto.fromJson(Map<String, dynamic> json) => _$DisplayPreferencesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DisplayPreferencesDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

