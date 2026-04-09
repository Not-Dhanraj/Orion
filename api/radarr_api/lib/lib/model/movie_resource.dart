//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/add_movie_options.dart';
import 'package:radarr_api/lib/model/movie_status_type.dart';
import 'package:radarr_api/lib/model/movie_statistics_resource.dart';
import 'package:radarr_api/lib/model/movie_collection_resource.dart';
import 'package:radarr_api/lib/model/alternative_title_resource.dart';
import 'package:radarr_api/lib/model/ratings.dart';
import 'package:radarr_api/lib/model/language.dart';
import 'package:radarr_api/lib/model/media_cover.dart';
import 'package:radarr_api/lib/model/movie_file_resource.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MovieResource {
  /// Returns a new [MovieResource] instance.
  MovieResource({

     this.id,

     this.title,

     this.originalTitle,

     this.originalLanguage,

     this.alternateTitles,

     this.secondaryYear,

     this.secondaryYearSourceId,

     this.sortTitle,

     this.sizeOnDisk,

     this.status,

     this.overview,

     this.inCinemas,

     this.physicalRelease,

     this.digitalRelease,

     this.releaseDate,

     this.physicalReleaseNote,

     this.images,

     this.website,

     this.remotePoster,

     this.year,

     this.youTubeTrailerId,

     this.studio,

     this.path,

     this.qualityProfileId,

     this.hasFile,

     this.movieFileId,

     this.monitored,

     this.minimumAvailability,

     this.isAvailable,

     this.folderName,

     this.runtime,

     this.cleanTitle,

     this.imdbId,

     this.tmdbId,

     this.titleSlug,

     this.rootFolderPath,

     this.folder,

     this.certification,

     this.genres,

     this.keywords,

     this.tags,

     this.added,

     this.addOptions,

     this.ratings,

     this.movieFile,

     this.collection,

     this.popularity,

     this.lastSearchTime,

     this.statistics,
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
    
    name: r'originalTitle',
    required: false,
    includeIfNull: false,
  )


  final String? originalTitle;



  @JsonKey(
    
    name: r'originalLanguage',
    required: false,
    includeIfNull: false,
  )


  final Language? originalLanguage;



  @JsonKey(
    
    name: r'alternateTitles',
    required: false,
    includeIfNull: false,
  )


  final List<AlternativeTitleResource>? alternateTitles;



  @JsonKey(
    
    name: r'secondaryYear',
    required: false,
    includeIfNull: false,
  )


  final int? secondaryYear;



  @JsonKey(
    
    name: r'secondaryYearSourceId',
    required: false,
    includeIfNull: false,
  )


  final int? secondaryYearSourceId;



  @JsonKey(
    
    name: r'sortTitle',
    required: false,
    includeIfNull: false,
  )


  final String? sortTitle;



  @JsonKey(
    
    name: r'sizeOnDisk',
    required: false,
    includeIfNull: false,
  )


  final int? sizeOnDisk;



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
    
    name: r'inCinemas',
    required: false,
    includeIfNull: false,
  )


  final DateTime? inCinemas;



  @JsonKey(
    
    name: r'physicalRelease',
    required: false,
    includeIfNull: false,
  )


  final DateTime? physicalRelease;



  @JsonKey(
    
    name: r'digitalRelease',
    required: false,
    includeIfNull: false,
  )


  final DateTime? digitalRelease;



  @JsonKey(
    
    name: r'releaseDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? releaseDate;



  @JsonKey(
    
    name: r'physicalReleaseNote',
    required: false,
    includeIfNull: false,
  )


  final String? physicalReleaseNote;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaCover>? images;



  @JsonKey(
    
    name: r'website',
    required: false,
    includeIfNull: false,
  )


  final String? website;



  @JsonKey(
    
    name: r'remotePoster',
    required: false,
    includeIfNull: false,
  )


  final String? remotePoster;



  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final int? year;



  @JsonKey(
    
    name: r'youTubeTrailerId',
    required: false,
    includeIfNull: false,
  )


  final String? youTubeTrailerId;



  @JsonKey(
    
    name: r'studio',
    required: false,
    includeIfNull: false,
  )


  final String? studio;



  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'qualityProfileId',
    required: false,
    includeIfNull: false,
  )


  final int? qualityProfileId;



  @JsonKey(
    
    name: r'hasFile',
    required: false,
    includeIfNull: false,
  )


  final bool? hasFile;



  @JsonKey(
    
    name: r'movieFileId',
    required: false,
    includeIfNull: false,
  )


  final int? movieFileId;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



  @JsonKey(
    
    name: r'minimumAvailability',
    required: false,
    includeIfNull: false,
  )


  final MovieStatusType? minimumAvailability;



  @JsonKey(
    
    name: r'isAvailable',
    required: false,
    includeIfNull: false,
  )


  final bool? isAvailable;



  @JsonKey(
    
    name: r'folderName',
    required: false,
    includeIfNull: false,
  )


  final String? folderName;



  @JsonKey(
    
    name: r'runtime',
    required: false,
    includeIfNull: false,
  )


  final int? runtime;



  @JsonKey(
    
    name: r'cleanTitle',
    required: false,
    includeIfNull: false,
  )


  final String? cleanTitle;



  @JsonKey(
    
    name: r'imdbId',
    required: false,
    includeIfNull: false,
  )


  final String? imdbId;



  @JsonKey(
    
    name: r'tmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tmdbId;



  @JsonKey(
    
    name: r'titleSlug',
    required: false,
    includeIfNull: false,
  )


  final String? titleSlug;



  @JsonKey(
    
    name: r'rootFolderPath',
    required: false,
    includeIfNull: false,
  )


  final String? rootFolderPath;



  @JsonKey(
    
    name: r'folder',
    required: false,
    includeIfNull: false,
  )


  final String? folder;



  @JsonKey(
    
    name: r'certification',
    required: false,
    includeIfNull: false,
  )


  final String? certification;



  @JsonKey(
    
    name: r'genres',
    required: false,
    includeIfNull: false,
  )


  final List<String>? genres;



  @JsonKey(
    
    name: r'keywords',
    required: false,
    includeIfNull: false,
  )


  final List<String>? keywords;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Set<int>? tags;



  @JsonKey(
    
    name: r'added',
    required: false,
    includeIfNull: false,
  )


  final DateTime? added;



  @JsonKey(
    
    name: r'addOptions',
    required: false,
    includeIfNull: false,
  )


  final AddMovieOptions? addOptions;



  @JsonKey(
    
    name: r'ratings',
    required: false,
    includeIfNull: false,
  )


  final Ratings? ratings;



  @JsonKey(
    
    name: r'movieFile',
    required: false,
    includeIfNull: false,
  )


  final MovieFileResource? movieFile;



  @JsonKey(
    
    name: r'collection',
    required: false,
    includeIfNull: false,
  )


  final MovieCollectionResource? collection;



  @JsonKey(
    
    name: r'popularity',
    required: false,
    includeIfNull: false,
  )


  final double? popularity;



  @JsonKey(
    
    name: r'lastSearchTime',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastSearchTime;



  @JsonKey(
    
    name: r'statistics',
    required: false,
    includeIfNull: false,
  )


  final MovieStatisticsResource? statistics;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MovieResource &&
      other.id == id &&
      other.title == title &&
      other.originalTitle == originalTitle &&
      other.originalLanguage == originalLanguage &&
      other.alternateTitles == alternateTitles &&
      other.secondaryYear == secondaryYear &&
      other.secondaryYearSourceId == secondaryYearSourceId &&
      other.sortTitle == sortTitle &&
      other.sizeOnDisk == sizeOnDisk &&
      other.status == status &&
      other.overview == overview &&
      other.inCinemas == inCinemas &&
      other.physicalRelease == physicalRelease &&
      other.digitalRelease == digitalRelease &&
      other.releaseDate == releaseDate &&
      other.physicalReleaseNote == physicalReleaseNote &&
      other.images == images &&
      other.website == website &&
      other.remotePoster == remotePoster &&
      other.year == year &&
      other.youTubeTrailerId == youTubeTrailerId &&
      other.studio == studio &&
      other.path == path &&
      other.qualityProfileId == qualityProfileId &&
      other.hasFile == hasFile &&
      other.movieFileId == movieFileId &&
      other.monitored == monitored &&
      other.minimumAvailability == minimumAvailability &&
      other.isAvailable == isAvailable &&
      other.folderName == folderName &&
      other.runtime == runtime &&
      other.cleanTitle == cleanTitle &&
      other.imdbId == imdbId &&
      other.tmdbId == tmdbId &&
      other.titleSlug == titleSlug &&
      other.rootFolderPath == rootFolderPath &&
      other.folder == folder &&
      other.certification == certification &&
      other.genres == genres &&
      other.keywords == keywords &&
      other.tags == tags &&
      other.added == added &&
      other.addOptions == addOptions &&
      other.ratings == ratings &&
      other.movieFile == movieFile &&
      other.collection == collection &&
      other.popularity == popularity &&
      other.lastSearchTime == lastSearchTime &&
      other.statistics == statistics;

    @override
    int get hashCode =>
        id.hashCode +
        (title == null ? 0 : title.hashCode) +
        (originalTitle == null ? 0 : originalTitle.hashCode) +
        originalLanguage.hashCode +
        (alternateTitles == null ? 0 : alternateTitles.hashCode) +
        (secondaryYear == null ? 0 : secondaryYear.hashCode) +
        secondaryYearSourceId.hashCode +
        (sortTitle == null ? 0 : sortTitle.hashCode) +
        (sizeOnDisk == null ? 0 : sizeOnDisk.hashCode) +
        status.hashCode +
        (overview == null ? 0 : overview.hashCode) +
        (inCinemas == null ? 0 : inCinemas.hashCode) +
        (physicalRelease == null ? 0 : physicalRelease.hashCode) +
        (digitalRelease == null ? 0 : digitalRelease.hashCode) +
        (releaseDate == null ? 0 : releaseDate.hashCode) +
        (physicalReleaseNote == null ? 0 : physicalReleaseNote.hashCode) +
        (images == null ? 0 : images.hashCode) +
        (website == null ? 0 : website.hashCode) +
        (remotePoster == null ? 0 : remotePoster.hashCode) +
        year.hashCode +
        (youTubeTrailerId == null ? 0 : youTubeTrailerId.hashCode) +
        (studio == null ? 0 : studio.hashCode) +
        (path == null ? 0 : path.hashCode) +
        qualityProfileId.hashCode +
        (hasFile == null ? 0 : hasFile.hashCode) +
        movieFileId.hashCode +
        monitored.hashCode +
        minimumAvailability.hashCode +
        isAvailable.hashCode +
        (folderName == null ? 0 : folderName.hashCode) +
        runtime.hashCode +
        (cleanTitle == null ? 0 : cleanTitle.hashCode) +
        (imdbId == null ? 0 : imdbId.hashCode) +
        tmdbId.hashCode +
        (titleSlug == null ? 0 : titleSlug.hashCode) +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        (folder == null ? 0 : folder.hashCode) +
        (certification == null ? 0 : certification.hashCode) +
        (genres == null ? 0 : genres.hashCode) +
        (keywords == null ? 0 : keywords.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        added.hashCode +
        addOptions.hashCode +
        ratings.hashCode +
        movieFile.hashCode +
        collection.hashCode +
        popularity.hashCode +
        (lastSearchTime == null ? 0 : lastSearchTime.hashCode) +
        statistics.hashCode;

  factory MovieResource.fromJson(Map<String, dynamic> json) => _$MovieResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

