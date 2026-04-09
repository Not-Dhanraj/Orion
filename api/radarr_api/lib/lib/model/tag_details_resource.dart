//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tag_details_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TagDetailsResource {
  /// Returns a new [TagDetailsResource] instance.
  TagDetailsResource({

     this.id,

     this.label,

     this.delayProfileIds,

     this.importListIds,

     this.notificationIds,

     this.releaseProfileIds,

     this.indexerIds,

     this.downloadClientIds,

     this.autoTagIds,

     this.movieIds,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'label',
    required: false,
    includeIfNull: false,
  )


  final String? label;



  @JsonKey(
    
    name: r'delayProfileIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? delayProfileIds;



  @JsonKey(
    
    name: r'importListIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? importListIds;



  @JsonKey(
    
    name: r'notificationIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? notificationIds;



  @JsonKey(
    
    name: r'releaseProfileIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? releaseProfileIds;



  @JsonKey(
    
    name: r'indexerIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? indexerIds;



  @JsonKey(
    
    name: r'downloadClientIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? downloadClientIds;



  @JsonKey(
    
    name: r'autoTagIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? autoTagIds;



  @JsonKey(
    
    name: r'movieIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? movieIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TagDetailsResource &&
      other.id == id &&
      other.label == label &&
      other.delayProfileIds == delayProfileIds &&
      other.importListIds == importListIds &&
      other.notificationIds == notificationIds &&
      other.releaseProfileIds == releaseProfileIds &&
      other.indexerIds == indexerIds &&
      other.downloadClientIds == downloadClientIds &&
      other.autoTagIds == autoTagIds &&
      other.movieIds == movieIds;

    @override
    int get hashCode =>
        id.hashCode +
        (label == null ? 0 : label.hashCode) +
        (delayProfileIds == null ? 0 : delayProfileIds.hashCode) +
        (importListIds == null ? 0 : importListIds.hashCode) +
        (notificationIds == null ? 0 : notificationIds.hashCode) +
        (releaseProfileIds == null ? 0 : releaseProfileIds.hashCode) +
        (indexerIds == null ? 0 : indexerIds.hashCode) +
        (downloadClientIds == null ? 0 : downloadClientIds.hashCode) +
        (autoTagIds == null ? 0 : autoTagIds.hashCode) +
        (movieIds == null ? 0 : movieIds.hashCode);

  factory TagDetailsResource.fromJson(Map<String, dynamic> json) => _$TagDetailsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$TagDetailsResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

