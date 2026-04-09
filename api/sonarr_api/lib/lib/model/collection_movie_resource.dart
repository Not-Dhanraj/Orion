//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/media_cover.dart';
import 'package:sonarr_api/lib/model/ratings.dart';
import 'package:sonarr_api/lib/model/movie_status_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collection_movie_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CollectionMovieResource {
  /// Returns a new [CollectionMovieResource] instance.
  CollectionMovieResource({

     this.tmdbId,

     this.imdbId,

     this.title,

     this.cleanTitle,

     this.sortTitle,

     this.status,

     this.overview,

     this.runtime,

     this.images,

     this.year,

     this.ratings,

     this.genres,

     this.folder,

     this.isExisting,

     this.isExcluded,
  });

  @JsonKey(
    
    name: r'tmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tmdbId;



  @JsonKey(
    
    name: r'imdbId',
    required: false,
    includeIfNull: false,
  )


  final String? imdbId;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'cleanTitle',
    required: false,
    includeIfNull: false,
  )


  final String? cleanTitle;



  @JsonKey(
    
    name: r'sortTitle',
    required: false,
    includeIfNull: false,
  )


  final String? sortTitle;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final MovieStatusType? status;



  @JsonKey(
    
    name: r'overview',
    required: false,
    includeIfNull: false,
  )


  final String? overview;



  @JsonKey(
    
    name: r'runtime',
    required: false,
    includeIfNull: false,
  )


  final int? runtime;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaCover>? images;



  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final int? year;



  @JsonKey(
    
    name: r'ratings',
    required: false,
    includeIfNull: false,
  )


  final Ratings? ratings;



  @JsonKey(
    
    name: r'genres',
    required: false,
    includeIfNull: false,
  )


  final List<String>? genres;



  @JsonKey(
    
    name: r'folder',
    required: false,
    includeIfNull: false,
  )


  final String? folder;



  @JsonKey(
    
    name: r'isExisting',
    required: false,
    includeIfNull: false,
  )


  final bool? isExisting;



  @JsonKey(
    
    name: r'isExcluded',
    required: false,
    includeIfNull: false,
  )


  final bool? isExcluded;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CollectionMovieResource &&
      other.tmdbId == tmdbId &&
      other.imdbId == imdbId &&
      other.title == title &&
      other.cleanTitle == cleanTitle &&
      other.sortTitle == sortTitle &&
      other.status == status &&
      other.overview == overview &&
      other.runtime == runtime &&
      other.images == images &&
      other.year == year &&
      other.ratings == ratings &&
      other.genres == genres &&
      other.folder == folder &&
      other.isExisting == isExisting &&
      other.isExcluded == isExcluded;

    @override
    int get hashCode =>
        tmdbId.hashCode +
        (imdbId == null ? 0 : imdbId.hashCode) +
        (title == null ? 0 : title.hashCode) +
        (cleanTitle == null ? 0 : cleanTitle.hashCode) +
        (sortTitle == null ? 0 : sortTitle.hashCode) +
        status.hashCode +
        (overview == null ? 0 : overview.hashCode) +
        runtime.hashCode +
        (images == null ? 0 : images.hashCode) +
        year.hashCode +
        ratings.hashCode +
        (genres == null ? 0 : genres.hashCode) +
        (folder == null ? 0 : folder.hashCode) +
        isExisting.hashCode +
        isExcluded.hashCode;

  factory CollectionMovieResource.fromJson(Map<String, dynamic> json) => _$CollectionMovieResourceFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionMovieResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

