//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/movie_status_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collection_update_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CollectionUpdateResource {
  /// Returns a new [CollectionUpdateResource] instance.
  CollectionUpdateResource({

     this.collectionIds,

     this.monitored,

     this.monitorMovies,

     this.searchOnAdd,

     this.qualityProfileId,

     this.rootFolderPath,

     this.minimumAvailability,
  });

  @JsonKey(
    
    name: r'collectionIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? collectionIds;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



  @JsonKey(
    
    name: r'monitorMovies',
    required: false,
    includeIfNull: false,
  )


  final bool? monitorMovies;



  @JsonKey(
    
    name: r'searchOnAdd',
    required: false,
    includeIfNull: false,
  )


  final bool? searchOnAdd;



  @JsonKey(
    
    name: r'qualityProfileId',
    required: false,
    includeIfNull: false,
  )


  final int? qualityProfileId;



  @JsonKey(
    
    name: r'rootFolderPath',
    required: false,
    includeIfNull: false,
  )


  final String? rootFolderPath;



  @JsonKey(
    
    name: r'minimumAvailability',
    required: false,
    includeIfNull: false,
  )


  final MovieStatusType? minimumAvailability;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CollectionUpdateResource &&
      other.collectionIds == collectionIds &&
      other.monitored == monitored &&
      other.monitorMovies == monitorMovies &&
      other.searchOnAdd == searchOnAdd &&
      other.qualityProfileId == qualityProfileId &&
      other.rootFolderPath == rootFolderPath &&
      other.minimumAvailability == minimumAvailability;

    @override
    int get hashCode =>
        (collectionIds == null ? 0 : collectionIds.hashCode) +
        (monitored == null ? 0 : monitored.hashCode) +
        (monitorMovies == null ? 0 : monitorMovies.hashCode) +
        (searchOnAdd == null ? 0 : searchOnAdd.hashCode) +
        (qualityProfileId == null ? 0 : qualityProfileId.hashCode) +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        minimumAvailability.hashCode;

  factory CollectionUpdateResource.fromJson(Map<String, dynamic> json) => _$CollectionUpdateResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionUpdateResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

