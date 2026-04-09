//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/series_types.dart';
import 'package:sonarr_api/lib/model/media_cover.dart';
import 'package:sonarr_api/lib/model/alternate_title_resource.dart';
import 'package:sonarr_api/lib/model/new_item_monitor_types.dart';
import 'package:sonarr_api/lib/model/season_resource.dart';
import 'package:sonarr_api/lib/model/add_series_options.dart';
import 'package:sonarr_api/lib/model/ratings.dart';
import 'package:sonarr_api/lib/model/series_status_type.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:sonarr_api/lib/model/series_statistics_resource.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'series_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeriesResource {
  /// Returns a new [SeriesResource] instance.
  SeriesResource({

     this.id,

     this.title,

     this.alternateTitles,

     this.sortTitle,

     this.status,

     this.ended,

     this.profileName,

     this.overview,

     this.nextAiring,

     this.previousAiring,

     this.network,

     this.airTime,

     this.images,

     this.originalLanguage,

     this.remotePoster,

     this.seasons,

     this.year,

     this.path,

     this.qualityProfileId,

     this.seasonFolder,

     this.monitored,

     this.monitorNewItems,

     this.useSceneNumbering,

     this.runtime,

     this.tvdbId,

     this.tvRageId,

     this.tvMazeId,

     this.tmdbId,

     this.firstAired,

     this.lastAired,

     this.seriesType,

     this.cleanTitle,

     this.imdbId,

     this.titleSlug,

     this.rootFolderPath,

     this.folder,

     this.certification,

     this.genres,

     this.tags,

     this.added,

     this.addOptions,

     this.ratings,

     this.statistics,

     this.episodesChanged,

     this.languageProfileId,
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
    
    name: r'alternateTitles',
    required: false,
    includeIfNull: false,
  )


  final List<AlternateTitleResource>? alternateTitles;



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


  final SeriesStatusType? status;



  @JsonKey(
    
    name: r'ended',
    required: false,
    includeIfNull: false,
  )


  final bool? ended;



  @JsonKey(
    
    name: r'profileName',
    required: false,
    includeIfNull: false,
  )


  final String? profileName;



  @JsonKey(
    
    name: r'overview',
    required: false,
    includeIfNull: false,
  )


  final String? overview;



  @JsonKey(
    
    name: r'nextAiring',
    required: false,
    includeIfNull: false,
  )


  final DateTime? nextAiring;



  @JsonKey(
    
    name: r'previousAiring',
    required: false,
    includeIfNull: false,
  )


  final DateTime? previousAiring;



  @JsonKey(
    
    name: r'network',
    required: false,
    includeIfNull: false,
  )


  final String? network;



  @JsonKey(
    
    name: r'airTime',
    required: false,
    includeIfNull: false,
  )


  final String? airTime;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaCover>? images;



  @JsonKey(
    
    name: r'originalLanguage',
    required: false,
    includeIfNull: false,
  )


  final Language? originalLanguage;



  @JsonKey(
    
    name: r'remotePoster',
    required: false,
    includeIfNull: false,
  )


  final String? remotePoster;



  @JsonKey(
    
    name: r'seasons',
    required: false,
    includeIfNull: false,
  )


  final List<SeasonResource>? seasons;



  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final int? year;



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
    
    name: r'seasonFolder',
    required: false,
    includeIfNull: false,
  )


  final bool? seasonFolder;



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
    
    name: r'useSceneNumbering',
    required: false,
    includeIfNull: false,
  )


  final bool? useSceneNumbering;



  @JsonKey(
    
    name: r'runtime',
    required: false,
    includeIfNull: false,
  )


  final int? runtime;



  @JsonKey(
    
    name: r'tvdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tvdbId;



  @JsonKey(
    
    name: r'tvRageId',
    required: false,
    includeIfNull: false,
  )


  final int? tvRageId;



  @JsonKey(
    
    name: r'tvMazeId',
    required: false,
    includeIfNull: false,
  )


  final int? tvMazeId;



  @JsonKey(
    
    name: r'tmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tmdbId;



  @JsonKey(
    
    name: r'firstAired',
    required: false,
    includeIfNull: false,
  )


  final DateTime? firstAired;



  @JsonKey(
    
    name: r'lastAired',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastAired;



  @JsonKey(
    
    name: r'seriesType',
    required: false,
    includeIfNull: false,
  )


  final SeriesTypes? seriesType;



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


  final AddSeriesOptions? addOptions;



  @JsonKey(
    
    name: r'ratings',
    required: false,
    includeIfNull: false,
  )


  final Ratings? ratings;



  @JsonKey(
    
    name: r'statistics',
    required: false,
    includeIfNull: false,
  )


  final SeriesStatisticsResource? statistics;



  @JsonKey(
    
    name: r'episodesChanged',
    required: false,
    includeIfNull: false,
  )


  final bool? episodesChanged;



  @Deprecated('languageProfileId has been deprecated')
  @JsonKey(
    
    name: r'languageProfileId',
    required: false,
    includeIfNull: false,
  )


  final int? languageProfileId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeriesResource &&
      other.id == id &&
      other.title == title &&
      other.alternateTitles == alternateTitles &&
      other.sortTitle == sortTitle &&
      other.status == status &&
      other.ended == ended &&
      other.profileName == profileName &&
      other.overview == overview &&
      other.nextAiring == nextAiring &&
      other.previousAiring == previousAiring &&
      other.network == network &&
      other.airTime == airTime &&
      other.images == images &&
      other.originalLanguage == originalLanguage &&
      other.remotePoster == remotePoster &&
      other.seasons == seasons &&
      other.year == year &&
      other.path == path &&
      other.qualityProfileId == qualityProfileId &&
      other.seasonFolder == seasonFolder &&
      other.monitored == monitored &&
      other.monitorNewItems == monitorNewItems &&
      other.useSceneNumbering == useSceneNumbering &&
      other.runtime == runtime &&
      other.tvdbId == tvdbId &&
      other.tvRageId == tvRageId &&
      other.tvMazeId == tvMazeId &&
      other.tmdbId == tmdbId &&
      other.firstAired == firstAired &&
      other.lastAired == lastAired &&
      other.seriesType == seriesType &&
      other.cleanTitle == cleanTitle &&
      other.imdbId == imdbId &&
      other.titleSlug == titleSlug &&
      other.rootFolderPath == rootFolderPath &&
      other.folder == folder &&
      other.certification == certification &&
      other.genres == genres &&
      other.tags == tags &&
      other.added == added &&
      other.addOptions == addOptions &&
      other.ratings == ratings &&
      other.statistics == statistics &&
      other.episodesChanged == episodesChanged &&
      other.languageProfileId == languageProfileId;

    @override
    int get hashCode =>
        id.hashCode +
        (title == null ? 0 : title.hashCode) +
        (alternateTitles == null ? 0 : alternateTitles.hashCode) +
        (sortTitle == null ? 0 : sortTitle.hashCode) +
        status.hashCode +
        ended.hashCode +
        (profileName == null ? 0 : profileName.hashCode) +
        (overview == null ? 0 : overview.hashCode) +
        (nextAiring == null ? 0 : nextAiring.hashCode) +
        (previousAiring == null ? 0 : previousAiring.hashCode) +
        (network == null ? 0 : network.hashCode) +
        (airTime == null ? 0 : airTime.hashCode) +
        (images == null ? 0 : images.hashCode) +
        originalLanguage.hashCode +
        (remotePoster == null ? 0 : remotePoster.hashCode) +
        (seasons == null ? 0 : seasons.hashCode) +
        year.hashCode +
        (path == null ? 0 : path.hashCode) +
        qualityProfileId.hashCode +
        seasonFolder.hashCode +
        monitored.hashCode +
        monitorNewItems.hashCode +
        useSceneNumbering.hashCode +
        runtime.hashCode +
        tvdbId.hashCode +
        tvRageId.hashCode +
        tvMazeId.hashCode +
        tmdbId.hashCode +
        (firstAired == null ? 0 : firstAired.hashCode) +
        (lastAired == null ? 0 : lastAired.hashCode) +
        seriesType.hashCode +
        (cleanTitle == null ? 0 : cleanTitle.hashCode) +
        (imdbId == null ? 0 : imdbId.hashCode) +
        (titleSlug == null ? 0 : titleSlug.hashCode) +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        (folder == null ? 0 : folder.hashCode) +
        (certification == null ? 0 : certification.hashCode) +
        (genres == null ? 0 : genres.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        added.hashCode +
        addOptions.hashCode +
        ratings.hashCode +
        statistics.hashCode +
        (episodesChanged == null ? 0 : episodesChanged.hashCode) +
        languageProfileId.hashCode;

  factory SeriesResource.fromJson(Map<String, dynamic> json) => _$SeriesResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

