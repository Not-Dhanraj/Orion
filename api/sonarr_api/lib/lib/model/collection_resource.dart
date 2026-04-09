//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/media_cover.dart';
import 'package:sonarr_api/lib/model/collection_movie_resource.dart';
import 'package:sonarr_api/lib/model/movie_status_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collection_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CollectionResource {
  /// Returns a new [CollectionResource] instance.
  CollectionResource({

     this.id,

     this.title,

     this.sortTitle,

     this.tmdbId,

     this.images,

     this.overview,

     this.monitored,

     this.rootFolderPath,

     this.qualityProfileId,

     this.searchOnAdd,

     this.minimumAvailability,

     this.movies,

     this.missingMovies,

     this.tags,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'sortTitle',
    required: false,
    includeIfNull: false,
  )


  final String? sortTitle;



  @JsonKey(
    
    name: r'tmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tmdbId;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaCover>? images;



  @JsonKey(
    
    name: r'overview',
    required: false,
    includeIfNull: false,
  )


  final String? overview;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



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
    
    name: r'searchOnAdd',
    required: false,
    includeIfNull: false,
  )


  final bool? searchOnAdd;



  @JsonKey(
    
    name: r'minimumAvailability',
    required: false,
    includeIfNull: false,
  )


  final MovieStatusType? minimumAvailability;



  @JsonKey(
    
    name: r'movies',
    required: false,
    includeIfNull: false,
  )


  final List<CollectionMovieResource>? movies;



  @JsonKey(
    
    name: r'missingMovies',
    required: false,
    includeIfNull: false,
  )


  final int? missingMovies;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CollectionResource &&
      other.id == id &&
      other.title == title &&
      other.sortTitle == sortTitle &&
      other.tmdbId == tmdbId &&
      other.images == images &&
      other.overview == overview &&
      other.monitored == monitored &&
      other.rootFolderPath == rootFolderPath &&
      other.qualityProfileId == qualityProfileId &&
      other.searchOnAdd == searchOnAdd &&
      other.minimumAvailability == minimumAvailability &&
      other.movies == movies &&
      other.missingMovies == missingMovies &&
      other.tags == tags;

    @override
    int get hashCode =>
        id.hashCode +
        (title == null ? 0 : title.hashCode) +
        (sortTitle == null ? 0 : sortTitle.hashCode) +
        tmdbId.hashCode +
        (images == null ? 0 : images.hashCode) +
        (overview == null ? 0 : overview.hashCode) +
        monitored.hashCode +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        qualityProfileId.hashCode +
        searchOnAdd.hashCode +
        minimumAvailability.hashCode +
        (movies == null ? 0 : movies.hashCode) +
        missingMovies.hashCode +
        (tags == null ? 0 : tags.hashCode);

  factory CollectionResource.fromJson(Map<String, dynamic> json) => _$CollectionResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

