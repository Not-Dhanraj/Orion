//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/base_item_kind.dart';
import 'package:jelly_api/lib/model/collection_type.dart';
import 'package:jelly_api/lib/model/media_url.dart';
import 'package:jelly_api/lib/model/video3_d_format.dart';
import 'package:jelly_api/lib/model/channel_type.dart';
import 'package:jelly_api/lib/model/chapter_info.dart';
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:jelly_api/lib/model/video_type.dart';
import 'package:jelly_api/lib/model/trickplay_info_dto.dart';
import 'package:jelly_api/lib/model/name_guid_pair.dart';
import 'package:jelly_api/lib/model/play_access.dart';
import 'package:jelly_api/lib/model/external_url.dart';
import 'package:jelly_api/lib/model/metadata_field.dart';
import 'package:jelly_api/lib/model/image_orientation.dart';
import 'package:jelly_api/lib/model/media_source_info.dart';
import 'package:jelly_api/lib/model/program_audio.dart';
import 'package:jelly_api/lib/model/base_item_person.dart';
import 'package:jelly_api/lib/model/extra_type.dart';
import 'package:jelly_api/lib/model/iso_type.dart';
import 'package:jelly_api/lib/model/base_item_dto_image_blur_hashes.dart';
import 'package:jelly_api/lib/model/location_type.dart';
import 'package:jelly_api/lib/model/day_of_week.dart';
import 'package:jelly_api/lib/model/media_stream.dart';
import 'package:jelly_api/lib/model/user_item_data_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_item_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BaseItemDto {
  /// Returns a new [BaseItemDto] instance.
  BaseItemDto({
    this.name,

    this.originalTitle,

    this.serverId,

    this.id,

    this.etag,

    this.sourceType,

    this.playlistItemId,

    this.dateCreated,

    this.dateLastMediaAdded,

    this.extraType,

    this.airsBeforeSeasonNumber,

    this.airsAfterSeasonNumber,

    this.airsBeforeEpisodeNumber,

    this.canDelete,

    this.canDownload,

    this.hasLyrics,

    this.hasSubtitles,

    this.preferredMetadataLanguage,

    this.preferredMetadataCountryCode,

    this.container,

    this.sortName,

    this.forcedSortName,

    this.video3DFormat,

    this.premiereDate,

    this.externalUrls,

    this.mediaSources,

    this.criticRating,

    this.productionLocations,

    this.path,

    this.enableMediaSourceDisplay,

    this.officialRating,

    this.customRating,

    this.channelId,

    this.channelName,

    this.overview,

    this.taglines,

    this.genres,

    this.communityRating,

    this.cumulativeRunTimeTicks,

    this.runTimeTicks,

    this.playAccess,

    this.aspectRatio,

    this.productionYear,

    this.isPlaceHolder,

    this.number,

    this.channelNumber,

    this.indexNumber,

    this.indexNumberEnd,

    this.parentIndexNumber,

    this.remoteTrailers,

    this.providerIds,

    this.isHD,

    this.isFolder,

    this.parentId,

    this.type,

    this.people,

    this.studios,

    this.genreItems,

    this.parentLogoItemId,

    this.parentBackdropItemId,

    this.parentBackdropImageTags,

    this.localTrailerCount,

    this.userData,

    this.recursiveItemCount,

    this.childCount,

    this.seriesName,

    this.seriesId,

    this.seasonId,

    this.specialFeatureCount,

    this.displayPreferencesId,

    this.status,

    this.airTime,

    this.airDays,

    this.tags,

    this.primaryImageAspectRatio,

    this.artists,

    this.artistItems,

    this.album,

    this.collectionType,

    this.displayOrder,

    this.albumId,

    this.albumPrimaryImageTag,

    this.seriesPrimaryImageTag,

    this.albumArtist,

    this.albumArtists,

    this.seasonName,

    this.mediaStreams,

    this.videoType,

    this.partCount,

    this.mediaSourceCount,

    this.imageTags,

    this.backdropImageTags,

    this.screenshotImageTags,

    this.parentLogoImageTag,

    this.parentArtItemId,

    this.parentArtImageTag,

    this.seriesThumbImageTag,

    this.imageBlurHashes,

    this.seriesStudio,

    this.parentThumbItemId,

    this.parentThumbImageTag,

    this.parentPrimaryImageItemId,

    this.parentPrimaryImageTag,

    this.chapters,

    this.trickplay,

    this.locationType,

    this.isoType,

    this.mediaType = MediaType.unknown,

    this.endDate,

    this.lockedFields,

    this.trailerCount,

    this.movieCount,

    this.seriesCount,

    this.programCount,

    this.episodeCount,

    this.songCount,

    this.albumCount,

    this.artistCount,

    this.musicVideoCount,

    this.lockData,

    this.width,

    this.height,

    this.cameraMake,

    this.cameraModel,

    this.software,

    this.exposureTime,

    this.focalLength,

    this.imageOrientation,

    this.aperture,

    this.shutterSpeed,

    this.latitude,

    this.longitude,

    this.altitude,

    this.isoSpeedRating,

    this.seriesTimerId,

    this.programId,

    this.channelPrimaryImageTag,

    this.startDate,

    this.completionPercentage,

    this.isRepeat,

    this.episodeTitle,

    this.channelType,

    this.audio,

    this.isMovie,

    this.isSports,

    this.isSeries,

    this.isLive,

    this.isNews,

    this.isKids,

    this.isPremiere,

    this.timerId,

    this.normalizationGain,

    this.currentProgram,
  });

  /// Gets or sets the name.
  @JsonKey(name: r'Name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'OriginalTitle', required: false, includeIfNull: false)
  final String? originalTitle;

  /// Gets or sets the server identifier.
  @JsonKey(name: r'ServerId', required: false, includeIfNull: false)
  final String? serverId;

  /// Gets or sets the id.
  @JsonKey(name: r'Id', required: false, includeIfNull: false)
  final String? id;

  /// Gets or sets the etag.
  @JsonKey(name: r'Etag', required: false, includeIfNull: false)
  final String? etag;

  /// Gets or sets the type of the source.
  @JsonKey(name: r'SourceType', required: false, includeIfNull: false)
  final String? sourceType;

  /// Gets or sets the playlist item identifier.
  @JsonKey(name: r'PlaylistItemId', required: false, includeIfNull: false)
  final String? playlistItemId;

  /// Gets or sets the date created.
  @JsonKey(name: r'DateCreated', required: false, includeIfNull: false)
  final DateTime? dateCreated;

  @JsonKey(name: r'DateLastMediaAdded', required: false, includeIfNull: false)
  final DateTime? dateLastMediaAdded;

  @JsonKey(name: r'ExtraType', required: false, includeIfNull: false)
  final ExtraType? extraType;

  @JsonKey(
    name: r'AirsBeforeSeasonNumber',
    required: false,
    includeIfNull: false,
  )
  final int? airsBeforeSeasonNumber;

  @JsonKey(
    name: r'AirsAfterSeasonNumber',
    required: false,
    includeIfNull: false,
  )
  final int? airsAfterSeasonNumber;

  @JsonKey(
    name: r'AirsBeforeEpisodeNumber',
    required: false,
    includeIfNull: false,
  )
  final int? airsBeforeEpisodeNumber;

  @JsonKey(name: r'CanDelete', required: false, includeIfNull: false)
  final bool? canDelete;

  @JsonKey(name: r'CanDownload', required: false, includeIfNull: false)
  final bool? canDownload;

  @JsonKey(name: r'HasLyrics', required: false, includeIfNull: false)
  final bool? hasLyrics;

  @JsonKey(name: r'HasSubtitles', required: false, includeIfNull: false)
  final bool? hasSubtitles;

  @JsonKey(
    name: r'PreferredMetadataLanguage',
    required: false,
    includeIfNull: false,
  )
  final String? preferredMetadataLanguage;

  @JsonKey(
    name: r'PreferredMetadataCountryCode',
    required: false,
    includeIfNull: false,
  )
  final String? preferredMetadataCountryCode;

  @JsonKey(name: r'Container', required: false, includeIfNull: false)
  final String? container;

  /// Gets or sets the name of the sort.
  @JsonKey(name: r'SortName', required: false, includeIfNull: false)
  final String? sortName;

  @JsonKey(name: r'ForcedSortName', required: false, includeIfNull: false)
  final String? forcedSortName;

  /// Gets or sets the video3 D format.
  @JsonKey(name: r'Video3DFormat', required: false, includeIfNull: false)
  final Video3DFormat? video3DFormat;

  /// Gets or sets the premiere date.
  @JsonKey(name: r'PremiereDate', required: false, includeIfNull: false)
  final DateTime? premiereDate;

  /// Gets or sets the external urls.
  @JsonKey(name: r'ExternalUrls', required: false, includeIfNull: false)
  final List<ExternalUrl>? externalUrls;

  /// Gets or sets the media versions.
  @JsonKey(name: r'MediaSources', required: false, includeIfNull: false)
  final List<MediaSourceInfo>? mediaSources;

  /// Gets or sets the critic rating.
  @JsonKey(name: r'CriticRating', required: false, includeIfNull: false)
  final double? criticRating;

  @JsonKey(name: r'ProductionLocations', required: false, includeIfNull: false)
  final List<String>? productionLocations;

  /// Gets or sets the path.
  @JsonKey(name: r'Path', required: false, includeIfNull: false)
  final String? path;

  @JsonKey(
    name: r'EnableMediaSourceDisplay',
    required: false,
    includeIfNull: false,
  )
  final bool? enableMediaSourceDisplay;

  /// Gets or sets the official rating.
  @JsonKey(name: r'OfficialRating', required: false, includeIfNull: false)
  final String? officialRating;

  /// Gets or sets the custom rating.
  @JsonKey(name: r'CustomRating', required: false, includeIfNull: false)
  final String? customRating;

  /// Gets or sets the channel identifier.
  @JsonKey(name: r'ChannelId', required: false, includeIfNull: false)
  final String? channelId;

  @JsonKey(name: r'ChannelName', required: false, includeIfNull: false)
  final String? channelName;

  /// Gets or sets the overview.
  @JsonKey(name: r'Overview', required: false, includeIfNull: false)
  final String? overview;

  /// Gets or sets the taglines.
  @JsonKey(name: r'Taglines', required: false, includeIfNull: false)
  final List<String>? taglines;

  /// Gets or sets the genres.
  @JsonKey(name: r'Genres', required: false, includeIfNull: false)
  final List<String>? genres;

  /// Gets or sets the community rating.
  @JsonKey(name: r'CommunityRating', required: false, includeIfNull: false)
  final double? communityRating;

  /// Gets or sets the cumulative run time ticks.
  @JsonKey(
    name: r'CumulativeRunTimeTicks',
    required: false,
    includeIfNull: false,
  )
  final int? cumulativeRunTimeTicks;

  /// Gets or sets the run time ticks.
  @JsonKey(name: r'RunTimeTicks', required: false, includeIfNull: false)
  final int? runTimeTicks;

  /// Gets or sets the play access.
  @JsonKey(name: r'PlayAccess', required: false, includeIfNull: false)
  final PlayAccess? playAccess;

  /// Gets or sets the aspect ratio.
  @JsonKey(name: r'AspectRatio', required: false, includeIfNull: false)
  final String? aspectRatio;

  /// Gets or sets the production year.
  @JsonKey(name: r'ProductionYear', required: false, includeIfNull: false)
  final int? productionYear;

  /// Gets or sets a value indicating whether this instance is place holder.
  @JsonKey(name: r'IsPlaceHolder', required: false, includeIfNull: false)
  final bool? isPlaceHolder;

  /// Gets or sets the number.
  @JsonKey(name: r'Number', required: false, includeIfNull: false)
  final String? number;

  @JsonKey(name: r'ChannelNumber', required: false, includeIfNull: false)
  final String? channelNumber;

  /// Gets or sets the index number.
  @JsonKey(name: r'IndexNumber', required: false, includeIfNull: false)
  final int? indexNumber;

  /// Gets or sets the index number end.
  @JsonKey(name: r'IndexNumberEnd', required: false, includeIfNull: false)
  final int? indexNumberEnd;

  /// Gets or sets the parent index number.
  @JsonKey(name: r'ParentIndexNumber', required: false, includeIfNull: false)
  final int? parentIndexNumber;

  /// Gets or sets the trailer urls.
  @JsonKey(name: r'RemoteTrailers', required: false, includeIfNull: false)
  final List<MediaUrl>? remoteTrailers;

  /// Gets or sets the provider ids.
  @JsonKey(name: r'ProviderIds', required: false, includeIfNull: false)
  final Map<String, String>? providerIds;

  /// Gets or sets a value indicating whether this instance is HD.
  @JsonKey(name: r'IsHD', required: false, includeIfNull: false)
  final bool? isHD;

  /// Gets or sets a value indicating whether this instance is folder.
  @JsonKey(name: r'IsFolder', required: false, includeIfNull: false)
  final bool? isFolder;

  /// Gets or sets the parent id.
  @JsonKey(name: r'ParentId', required: false, includeIfNull: false)
  final String? parentId;

  /// Gets or sets the type.
  @JsonKey(name: r'Type', required: false, includeIfNull: false)
  final BaseItemKind? type;

  /// Gets or sets the people.
  @JsonKey(name: r'People', required: false, includeIfNull: false)
  final List<BaseItemPerson>? people;

  /// Gets or sets the studios.
  @JsonKey(name: r'Studios', required: false, includeIfNull: false)
  final List<NameGuidPair>? studios;

  @JsonKey(name: r'GenreItems', required: false, includeIfNull: false)
  final List<NameGuidPair>? genreItems;

  /// Gets or sets whether the item has a logo, this will hold the Id of the Parent that has one.
  @JsonKey(name: r'ParentLogoItemId', required: false, includeIfNull: false)
  final String? parentLogoItemId;

  /// Gets or sets whether the item has any backdrops, this will hold the Id of the Parent that has one.
  @JsonKey(name: r'ParentBackdropItemId', required: false, includeIfNull: false)
  final String? parentBackdropItemId;

  /// Gets or sets the parent backdrop image tags.
  @JsonKey(
    name: r'ParentBackdropImageTags',
    required: false,
    includeIfNull: false,
  )
  final List<String>? parentBackdropImageTags;

  /// Gets or sets the local trailer count.
  @JsonKey(name: r'LocalTrailerCount', required: false, includeIfNull: false)
  final int? localTrailerCount;

  /// Gets or sets the user data for this item based on the user it's being requested for.
  @JsonKey(name: r'UserData', required: false, includeIfNull: false)
  final UserItemDataDto? userData;

  /// Gets or sets the recursive item count.
  @JsonKey(name: r'RecursiveItemCount', required: false, includeIfNull: false)
  final int? recursiveItemCount;

  /// Gets or sets the child count.
  @JsonKey(name: r'ChildCount', required: false, includeIfNull: false)
  final int? childCount;

  /// Gets or sets the name of the series.
  @JsonKey(name: r'SeriesName', required: false, includeIfNull: false)
  final String? seriesName;

  /// Gets or sets the series id.
  @JsonKey(name: r'SeriesId', required: false, includeIfNull: false)
  final String? seriesId;

  /// Gets or sets the season identifier.
  @JsonKey(name: r'SeasonId', required: false, includeIfNull: false)
  final String? seasonId;

  /// Gets or sets the special feature count.
  @JsonKey(name: r'SpecialFeatureCount', required: false, includeIfNull: false)
  final int? specialFeatureCount;

  /// Gets or sets the display preferences id.
  @JsonKey(name: r'DisplayPreferencesId', required: false, includeIfNull: false)
  final String? displayPreferencesId;

  /// Gets or sets the status.
  @JsonKey(name: r'Status', required: false, includeIfNull: false)
  final String? status;

  /// Gets or sets the air time.
  @JsonKey(name: r'AirTime', required: false, includeIfNull: false)
  final String? airTime;

  /// Gets or sets the air days.
  @JsonKey(name: r'AirDays', required: false, includeIfNull: false)
  final List<DayOfWeek>? airDays;

  /// Gets or sets the tags.
  @JsonKey(name: r'Tags', required: false, includeIfNull: false)
  final List<String>? tags;

  /// Gets or sets the primary image aspect ratio, after image enhancements.
  @JsonKey(
    name: r'PrimaryImageAspectRatio',
    required: false,
    includeIfNull: false,
  )
  final double? primaryImageAspectRatio;

  /// Gets or sets the artists.
  @JsonKey(name: r'Artists', required: false, includeIfNull: false)
  final List<String>? artists;

  /// Gets or sets the artist items.
  @JsonKey(name: r'ArtistItems', required: false, includeIfNull: false)
  final List<NameGuidPair>? artistItems;

  /// Gets or sets the album.
  @JsonKey(name: r'Album', required: false, includeIfNull: false)
  final String? album;

  /// Gets or sets the type of the collection.
  @JsonKey(name: r'CollectionType', required: false, includeIfNull: false)
  final CollectionType? collectionType;

  /// Gets or sets the display order.
  @JsonKey(name: r'DisplayOrder', required: false, includeIfNull: false)
  final String? displayOrder;

  /// Gets or sets the album id.
  @JsonKey(name: r'AlbumId', required: false, includeIfNull: false)
  final String? albumId;

  /// Gets or sets the album image tag.
  @JsonKey(name: r'AlbumPrimaryImageTag', required: false, includeIfNull: false)
  final String? albumPrimaryImageTag;

  /// Gets or sets the series primary image tag.
  @JsonKey(
    name: r'SeriesPrimaryImageTag',
    required: false,
    includeIfNull: false,
  )
  final String? seriesPrimaryImageTag;

  /// Gets or sets the album artist.
  @JsonKey(name: r'AlbumArtist', required: false, includeIfNull: false)
  final String? albumArtist;

  /// Gets or sets the album artists.
  @JsonKey(name: r'AlbumArtists', required: false, includeIfNull: false)
  final List<NameGuidPair>? albumArtists;

  /// Gets or sets the name of the season.
  @JsonKey(name: r'SeasonName', required: false, includeIfNull: false)
  final String? seasonName;

  /// Gets or sets the media streams.
  @JsonKey(name: r'MediaStreams', required: false, includeIfNull: false)
  final List<MediaStream>? mediaStreams;

  /// Gets or sets the type of the video.
  @JsonKey(name: r'VideoType', required: false, includeIfNull: false)
  final VideoType? videoType;

  /// Gets or sets the part count.
  @JsonKey(name: r'PartCount', required: false, includeIfNull: false)
  final int? partCount;

  @JsonKey(name: r'MediaSourceCount', required: false, includeIfNull: false)
  final int? mediaSourceCount;

  /// Gets or sets the image tags.
  @JsonKey(name: r'ImageTags', required: false, includeIfNull: false)
  final Map<String, String>? imageTags;

  /// Gets or sets the backdrop image tags.
  @JsonKey(name: r'BackdropImageTags', required: false, includeIfNull: false)
  final List<String>? backdropImageTags;

  /// Gets or sets the screenshot image tags.
  @JsonKey(name: r'ScreenshotImageTags', required: false, includeIfNull: false)
  final List<String>? screenshotImageTags;

  /// Gets or sets the parent logo image tag.
  @JsonKey(name: r'ParentLogoImageTag', required: false, includeIfNull: false)
  final String? parentLogoImageTag;

  /// Gets or sets whether the item has fan art, this will hold the Id of the Parent that has one.
  @JsonKey(name: r'ParentArtItemId', required: false, includeIfNull: false)
  final String? parentArtItemId;

  /// Gets or sets the parent art image tag.
  @JsonKey(name: r'ParentArtImageTag', required: false, includeIfNull: false)
  final String? parentArtImageTag;

  /// Gets or sets the series thumb image tag.
  @JsonKey(name: r'SeriesThumbImageTag', required: false, includeIfNull: false)
  final String? seriesThumbImageTag;

  @JsonKey(name: r'ImageBlurHashes', required: false, includeIfNull: false)
  final BaseItemDtoImageBlurHashes? imageBlurHashes;

  /// Gets or sets the series studio.
  @JsonKey(name: r'SeriesStudio', required: false, includeIfNull: false)
  final String? seriesStudio;

  /// Gets or sets the parent thumb item id.
  @JsonKey(name: r'ParentThumbItemId', required: false, includeIfNull: false)
  final String? parentThumbItemId;

  /// Gets or sets the parent thumb image tag.
  @JsonKey(name: r'ParentThumbImageTag', required: false, includeIfNull: false)
  final String? parentThumbImageTag;

  /// Gets or sets the parent primary image item identifier.
  @JsonKey(
    name: r'ParentPrimaryImageItemId',
    required: false,
    includeIfNull: false,
  )
  final String? parentPrimaryImageItemId;

  /// Gets or sets the parent primary image tag.
  @JsonKey(
    name: r'ParentPrimaryImageTag',
    required: false,
    includeIfNull: false,
  )
  final String? parentPrimaryImageTag;

  /// Gets or sets the chapters.
  @JsonKey(name: r'Chapters', required: false, includeIfNull: false)
  final List<ChapterInfo>? chapters;

  /// Gets or sets the trickplay manifest.
  @JsonKey(name: r'Trickplay', required: false, includeIfNull: false)
  final Map<String, Map<String, TrickplayInfoDto>>? trickplay;

  /// Gets or sets the type of the location.
  @JsonKey(name: r'LocationType', required: false, includeIfNull: false)
  final LocationType? locationType;

  /// Gets or sets the type of the iso.
  @JsonKey(name: r'IsoType', required: false, includeIfNull: false)
  final IsoType? isoType;

  /// Gets or sets the type of the media.
  @JsonKey(
    defaultValue: MediaType.unknown,
    name: r'MediaType',
    required: false,
    includeIfNull: false,
  )
  final MediaType? mediaType;

  /// Gets or sets the end date.
  @JsonKey(name: r'EndDate', required: false, includeIfNull: false)
  final DateTime? endDate;

  /// Gets or sets the locked fields.
  @JsonKey(name: r'LockedFields', required: false, includeIfNull: false)
  final List<MetadataField>? lockedFields;

  /// Gets or sets the trailer count.
  @JsonKey(name: r'TrailerCount', required: false, includeIfNull: false)
  final int? trailerCount;

  /// Gets or sets the movie count.
  @JsonKey(name: r'MovieCount', required: false, includeIfNull: false)
  final int? movieCount;

  /// Gets or sets the series count.
  @JsonKey(name: r'SeriesCount', required: false, includeIfNull: false)
  final int? seriesCount;

  @JsonKey(name: r'ProgramCount', required: false, includeIfNull: false)
  final int? programCount;

  /// Gets or sets the episode count.
  @JsonKey(name: r'EpisodeCount', required: false, includeIfNull: false)
  final int? episodeCount;

  /// Gets or sets the song count.
  @JsonKey(name: r'SongCount', required: false, includeIfNull: false)
  final int? songCount;

  /// Gets or sets the album count.
  @JsonKey(name: r'AlbumCount', required: false, includeIfNull: false)
  final int? albumCount;

  @JsonKey(name: r'ArtistCount', required: false, includeIfNull: false)
  final int? artistCount;

  /// Gets or sets the music video count.
  @JsonKey(name: r'MusicVideoCount', required: false, includeIfNull: false)
  final int? musicVideoCount;

  /// Gets or sets a value indicating whether [enable internet providers].
  @JsonKey(name: r'LockData', required: false, includeIfNull: false)
  final bool? lockData;

  @JsonKey(name: r'Width', required: false, includeIfNull: false)
  final int? width;

  @JsonKey(name: r'Height', required: false, includeIfNull: false)
  final int? height;

  @JsonKey(name: r'CameraMake', required: false, includeIfNull: false)
  final String? cameraMake;

  @JsonKey(name: r'CameraModel', required: false, includeIfNull: false)
  final String? cameraModel;

  @JsonKey(name: r'Software', required: false, includeIfNull: false)
  final String? software;

  @JsonKey(name: r'ExposureTime', required: false, includeIfNull: false)
  final double? exposureTime;

  @JsonKey(name: r'FocalLength', required: false, includeIfNull: false)
  final double? focalLength;

  @JsonKey(name: r'ImageOrientation', required: false, includeIfNull: false)
  final ImageOrientation? imageOrientation;

  @JsonKey(name: r'Aperture', required: false, includeIfNull: false)
  final double? aperture;

  @JsonKey(name: r'ShutterSpeed', required: false, includeIfNull: false)
  final double? shutterSpeed;

  @JsonKey(name: r'Latitude', required: false, includeIfNull: false)
  final double? latitude;

  @JsonKey(name: r'Longitude', required: false, includeIfNull: false)
  final double? longitude;

  @JsonKey(name: r'Altitude', required: false, includeIfNull: false)
  final double? altitude;

  @JsonKey(name: r'IsoSpeedRating', required: false, includeIfNull: false)
  final int? isoSpeedRating;

  /// Gets or sets the series timer identifier.
  @JsonKey(name: r'SeriesTimerId', required: false, includeIfNull: false)
  final String? seriesTimerId;

  /// Gets or sets the program identifier.
  @JsonKey(name: r'ProgramId', required: false, includeIfNull: false)
  final String? programId;

  /// Gets or sets the channel primary image tag.
  @JsonKey(
    name: r'ChannelPrimaryImageTag',
    required: false,
    includeIfNull: false,
  )
  final String? channelPrimaryImageTag;

  /// Gets or sets the start date of the recording, in UTC.
  @JsonKey(name: r'StartDate', required: false, includeIfNull: false)
  final DateTime? startDate;

  /// Gets or sets the completion percentage.
  @JsonKey(name: r'CompletionPercentage', required: false, includeIfNull: false)
  final double? completionPercentage;

  /// Gets or sets a value indicating whether this instance is repeat.
  @JsonKey(name: r'IsRepeat', required: false, includeIfNull: false)
  final bool? isRepeat;

  /// Gets or sets the episode title.
  @JsonKey(name: r'EpisodeTitle', required: false, includeIfNull: false)
  final String? episodeTitle;

  /// Gets or sets the type of the channel.
  @JsonKey(name: r'ChannelType', required: false, includeIfNull: false)
  final ChannelType? channelType;

  /// Gets or sets the audio.
  @JsonKey(name: r'Audio', required: false, includeIfNull: false)
  final ProgramAudio? audio;

  /// Gets or sets a value indicating whether this instance is movie.
  @JsonKey(name: r'IsMovie', required: false, includeIfNull: false)
  final bool? isMovie;

  /// Gets or sets a value indicating whether this instance is sports.
  @JsonKey(name: r'IsSports', required: false, includeIfNull: false)
  final bool? isSports;

  /// Gets or sets a value indicating whether this instance is series.
  @JsonKey(name: r'IsSeries', required: false, includeIfNull: false)
  final bool? isSeries;

  /// Gets or sets a value indicating whether this instance is live.
  @JsonKey(name: r'IsLive', required: false, includeIfNull: false)
  final bool? isLive;

  /// Gets or sets a value indicating whether this instance is news.
  @JsonKey(name: r'IsNews', required: false, includeIfNull: false)
  final bool? isNews;

  /// Gets or sets a value indicating whether this instance is kids.
  @JsonKey(name: r'IsKids', required: false, includeIfNull: false)
  final bool? isKids;

  /// Gets or sets a value indicating whether this instance is premiere.
  @JsonKey(name: r'IsPremiere', required: false, includeIfNull: false)
  final bool? isPremiere;

  /// Gets or sets the timer identifier.
  @JsonKey(name: r'TimerId', required: false, includeIfNull: false)
  final String? timerId;

  /// Gets or sets the gain required for audio normalization.
  @JsonKey(name: r'NormalizationGain', required: false, includeIfNull: false)
  final double? normalizationGain;

  /// Gets or sets the current program.
  @JsonKey(name: r'CurrentProgram', required: false, includeIfNull: false)
  final BaseItemDto? currentProgram;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseItemDto &&
          other.name == name &&
          other.originalTitle == originalTitle &&
          other.serverId == serverId &&
          other.id == id &&
          other.etag == etag &&
          other.sourceType == sourceType &&
          other.playlistItemId == playlistItemId &&
          other.dateCreated == dateCreated &&
          other.dateLastMediaAdded == dateLastMediaAdded &&
          other.extraType == extraType &&
          other.airsBeforeSeasonNumber == airsBeforeSeasonNumber &&
          other.airsAfterSeasonNumber == airsAfterSeasonNumber &&
          other.airsBeforeEpisodeNumber == airsBeforeEpisodeNumber &&
          other.canDelete == canDelete &&
          other.canDownload == canDownload &&
          other.hasLyrics == hasLyrics &&
          other.hasSubtitles == hasSubtitles &&
          other.preferredMetadataLanguage == preferredMetadataLanguage &&
          other.preferredMetadataCountryCode == preferredMetadataCountryCode &&
          other.container == container &&
          other.sortName == sortName &&
          other.forcedSortName == forcedSortName &&
          other.video3DFormat == video3DFormat &&
          other.premiereDate == premiereDate &&
          other.externalUrls == externalUrls &&
          other.mediaSources == mediaSources &&
          other.criticRating == criticRating &&
          other.productionLocations == productionLocations &&
          other.path == path &&
          other.enableMediaSourceDisplay == enableMediaSourceDisplay &&
          other.officialRating == officialRating &&
          other.customRating == customRating &&
          other.channelId == channelId &&
          other.channelName == channelName &&
          other.overview == overview &&
          other.taglines == taglines &&
          other.genres == genres &&
          other.communityRating == communityRating &&
          other.cumulativeRunTimeTicks == cumulativeRunTimeTicks &&
          other.runTimeTicks == runTimeTicks &&
          other.playAccess == playAccess &&
          other.aspectRatio == aspectRatio &&
          other.productionYear == productionYear &&
          other.isPlaceHolder == isPlaceHolder &&
          other.number == number &&
          other.channelNumber == channelNumber &&
          other.indexNumber == indexNumber &&
          other.indexNumberEnd == indexNumberEnd &&
          other.parentIndexNumber == parentIndexNumber &&
          other.remoteTrailers == remoteTrailers &&
          other.providerIds == providerIds &&
          other.isHD == isHD &&
          other.isFolder == isFolder &&
          other.parentId == parentId &&
          other.type == type &&
          other.people == people &&
          other.studios == studios &&
          other.genreItems == genreItems &&
          other.parentLogoItemId == parentLogoItemId &&
          other.parentBackdropItemId == parentBackdropItemId &&
          other.parentBackdropImageTags == parentBackdropImageTags &&
          other.localTrailerCount == localTrailerCount &&
          other.userData == userData &&
          other.recursiveItemCount == recursiveItemCount &&
          other.childCount == childCount &&
          other.seriesName == seriesName &&
          other.seriesId == seriesId &&
          other.seasonId == seasonId &&
          other.specialFeatureCount == specialFeatureCount &&
          other.displayPreferencesId == displayPreferencesId &&
          other.status == status &&
          other.airTime == airTime &&
          other.airDays == airDays &&
          other.tags == tags &&
          other.primaryImageAspectRatio == primaryImageAspectRatio &&
          other.artists == artists &&
          other.artistItems == artistItems &&
          other.album == album &&
          other.collectionType == collectionType &&
          other.displayOrder == displayOrder &&
          other.albumId == albumId &&
          other.albumPrimaryImageTag == albumPrimaryImageTag &&
          other.seriesPrimaryImageTag == seriesPrimaryImageTag &&
          other.albumArtist == albumArtist &&
          other.albumArtists == albumArtists &&
          other.seasonName == seasonName &&
          other.mediaStreams == mediaStreams &&
          other.videoType == videoType &&
          other.partCount == partCount &&
          other.mediaSourceCount == mediaSourceCount &&
          other.imageTags == imageTags &&
          other.backdropImageTags == backdropImageTags &&
          other.screenshotImageTags == screenshotImageTags &&
          other.parentLogoImageTag == parentLogoImageTag &&
          other.parentArtItemId == parentArtItemId &&
          other.parentArtImageTag == parentArtImageTag &&
          other.seriesThumbImageTag == seriesThumbImageTag &&
          other.imageBlurHashes == imageBlurHashes &&
          other.seriesStudio == seriesStudio &&
          other.parentThumbItemId == parentThumbItemId &&
          other.parentThumbImageTag == parentThumbImageTag &&
          other.parentPrimaryImageItemId == parentPrimaryImageItemId &&
          other.parentPrimaryImageTag == parentPrimaryImageTag &&
          other.chapters == chapters &&
          other.trickplay == trickplay &&
          other.locationType == locationType &&
          other.isoType == isoType &&
          other.mediaType == mediaType &&
          other.endDate == endDate &&
          other.lockedFields == lockedFields &&
          other.trailerCount == trailerCount &&
          other.movieCount == movieCount &&
          other.seriesCount == seriesCount &&
          other.programCount == programCount &&
          other.episodeCount == episodeCount &&
          other.songCount == songCount &&
          other.albumCount == albumCount &&
          other.artistCount == artistCount &&
          other.musicVideoCount == musicVideoCount &&
          other.lockData == lockData &&
          other.width == width &&
          other.height == height &&
          other.cameraMake == cameraMake &&
          other.cameraModel == cameraModel &&
          other.software == software &&
          other.exposureTime == exposureTime &&
          other.focalLength == focalLength &&
          other.imageOrientation == imageOrientation &&
          other.aperture == aperture &&
          other.shutterSpeed == shutterSpeed &&
          other.latitude == latitude &&
          other.longitude == longitude &&
          other.altitude == altitude &&
          other.isoSpeedRating == isoSpeedRating &&
          other.seriesTimerId == seriesTimerId &&
          other.programId == programId &&
          other.channelPrimaryImageTag == channelPrimaryImageTag &&
          other.startDate == startDate &&
          other.completionPercentage == completionPercentage &&
          other.isRepeat == isRepeat &&
          other.episodeTitle == episodeTitle &&
          other.channelType == channelType &&
          other.audio == audio &&
          other.isMovie == isMovie &&
          other.isSports == isSports &&
          other.isSeries == isSeries &&
          other.isLive == isLive &&
          other.isNews == isNews &&
          other.isKids == isKids &&
          other.isPremiere == isPremiere &&
          other.timerId == timerId &&
          other.normalizationGain == normalizationGain &&
          other.currentProgram == currentProgram;

  @override
  int get hashCode =>
      (name == null ? 0 : name.hashCode) +
      (originalTitle == null ? 0 : originalTitle.hashCode) +
      (serverId == null ? 0 : serverId.hashCode) +
      id.hashCode +
      (etag == null ? 0 : etag.hashCode) +
      (sourceType == null ? 0 : sourceType.hashCode) +
      (playlistItemId == null ? 0 : playlistItemId.hashCode) +
      (dateCreated == null ? 0 : dateCreated.hashCode) +
      (dateLastMediaAdded == null ? 0 : dateLastMediaAdded.hashCode) +
      (extraType == null ? 0 : extraType.hashCode) +
      (airsBeforeSeasonNumber == null ? 0 : airsBeforeSeasonNumber.hashCode) +
      (airsAfterSeasonNumber == null ? 0 : airsAfterSeasonNumber.hashCode) +
      (airsBeforeEpisodeNumber == null ? 0 : airsBeforeEpisodeNumber.hashCode) +
      (canDelete == null ? 0 : canDelete.hashCode) +
      (canDownload == null ? 0 : canDownload.hashCode) +
      (hasLyrics == null ? 0 : hasLyrics.hashCode) +
      (hasSubtitles == null ? 0 : hasSubtitles.hashCode) +
      (preferredMetadataLanguage == null
          ? 0
          : preferredMetadataLanguage.hashCode) +
      (preferredMetadataCountryCode == null
          ? 0
          : preferredMetadataCountryCode.hashCode) +
      (container == null ? 0 : container.hashCode) +
      (sortName == null ? 0 : sortName.hashCode) +
      (forcedSortName == null ? 0 : forcedSortName.hashCode) +
      (video3DFormat == null ? 0 : video3DFormat.hashCode) +
      (premiereDate == null ? 0 : premiereDate.hashCode) +
      (externalUrls == null ? 0 : externalUrls.hashCode) +
      (mediaSources == null ? 0 : mediaSources.hashCode) +
      (criticRating == null ? 0 : criticRating.hashCode) +
      (productionLocations == null ? 0 : productionLocations.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (enableMediaSourceDisplay == null
          ? 0
          : enableMediaSourceDisplay.hashCode) +
      (officialRating == null ? 0 : officialRating.hashCode) +
      (customRating == null ? 0 : customRating.hashCode) +
      (channelId == null ? 0 : channelId.hashCode) +
      (channelName == null ? 0 : channelName.hashCode) +
      (overview == null ? 0 : overview.hashCode) +
      (taglines == null ? 0 : taglines.hashCode) +
      (genres == null ? 0 : genres.hashCode) +
      (communityRating == null ? 0 : communityRating.hashCode) +
      (cumulativeRunTimeTicks == null ? 0 : cumulativeRunTimeTicks.hashCode) +
      (runTimeTicks == null ? 0 : runTimeTicks.hashCode) +
      (playAccess == null ? 0 : playAccess.hashCode) +
      (aspectRatio == null ? 0 : aspectRatio.hashCode) +
      (productionYear == null ? 0 : productionYear.hashCode) +
      (isPlaceHolder == null ? 0 : isPlaceHolder.hashCode) +
      (number == null ? 0 : number.hashCode) +
      (channelNumber == null ? 0 : channelNumber.hashCode) +
      (indexNumber == null ? 0 : indexNumber.hashCode) +
      (indexNumberEnd == null ? 0 : indexNumberEnd.hashCode) +
      (parentIndexNumber == null ? 0 : parentIndexNumber.hashCode) +
      (remoteTrailers == null ? 0 : remoteTrailers.hashCode) +
      (providerIds == null ? 0 : providerIds.hashCode) +
      (isHD == null ? 0 : isHD.hashCode) +
      (isFolder == null ? 0 : isFolder.hashCode) +
      (parentId == null ? 0 : parentId.hashCode) +
      type.hashCode +
      (people == null ? 0 : people.hashCode) +
      (studios == null ? 0 : studios.hashCode) +
      (genreItems == null ? 0 : genreItems.hashCode) +
      (parentLogoItemId == null ? 0 : parentLogoItemId.hashCode) +
      (parentBackdropItemId == null ? 0 : parentBackdropItemId.hashCode) +
      (parentBackdropImageTags == null ? 0 : parentBackdropImageTags.hashCode) +
      (localTrailerCount == null ? 0 : localTrailerCount.hashCode) +
      (userData == null ? 0 : userData.hashCode) +
      (recursiveItemCount == null ? 0 : recursiveItemCount.hashCode) +
      (childCount == null ? 0 : childCount.hashCode) +
      (seriesName == null ? 0 : seriesName.hashCode) +
      (seriesId == null ? 0 : seriesId.hashCode) +
      (seasonId == null ? 0 : seasonId.hashCode) +
      (specialFeatureCount == null ? 0 : specialFeatureCount.hashCode) +
      (displayPreferencesId == null ? 0 : displayPreferencesId.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (airTime == null ? 0 : airTime.hashCode) +
      (airDays == null ? 0 : airDays.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (primaryImageAspectRatio == null ? 0 : primaryImageAspectRatio.hashCode) +
      (artists == null ? 0 : artists.hashCode) +
      (artistItems == null ? 0 : artistItems.hashCode) +
      (album == null ? 0 : album.hashCode) +
      (collectionType == null ? 0 : collectionType.hashCode) +
      (displayOrder == null ? 0 : displayOrder.hashCode) +
      (albumId == null ? 0 : albumId.hashCode) +
      (albumPrimaryImageTag == null ? 0 : albumPrimaryImageTag.hashCode) +
      (seriesPrimaryImageTag == null ? 0 : seriesPrimaryImageTag.hashCode) +
      (albumArtist == null ? 0 : albumArtist.hashCode) +
      (albumArtists == null ? 0 : albumArtists.hashCode) +
      (seasonName == null ? 0 : seasonName.hashCode) +
      (mediaStreams == null ? 0 : mediaStreams.hashCode) +
      (videoType == null ? 0 : videoType.hashCode) +
      (partCount == null ? 0 : partCount.hashCode) +
      (mediaSourceCount == null ? 0 : mediaSourceCount.hashCode) +
      (imageTags == null ? 0 : imageTags.hashCode) +
      (backdropImageTags == null ? 0 : backdropImageTags.hashCode) +
      (screenshotImageTags == null ? 0 : screenshotImageTags.hashCode) +
      (parentLogoImageTag == null ? 0 : parentLogoImageTag.hashCode) +
      (parentArtItemId == null ? 0 : parentArtItemId.hashCode) +
      (parentArtImageTag == null ? 0 : parentArtImageTag.hashCode) +
      (seriesThumbImageTag == null ? 0 : seriesThumbImageTag.hashCode) +
      (imageBlurHashes == null ? 0 : imageBlurHashes.hashCode) +
      (seriesStudio == null ? 0 : seriesStudio.hashCode) +
      (parentThumbItemId == null ? 0 : parentThumbItemId.hashCode) +
      (parentThumbImageTag == null ? 0 : parentThumbImageTag.hashCode) +
      (parentPrimaryImageItemId == null
          ? 0
          : parentPrimaryImageItemId.hashCode) +
      (parentPrimaryImageTag == null ? 0 : parentPrimaryImageTag.hashCode) +
      (chapters == null ? 0 : chapters.hashCode) +
      (trickplay == null ? 0 : trickplay.hashCode) +
      (locationType == null ? 0 : locationType.hashCode) +
      (isoType == null ? 0 : isoType.hashCode) +
      mediaType.hashCode +
      (endDate == null ? 0 : endDate.hashCode) +
      (lockedFields == null ? 0 : lockedFields.hashCode) +
      (trailerCount == null ? 0 : trailerCount.hashCode) +
      (movieCount == null ? 0 : movieCount.hashCode) +
      (seriesCount == null ? 0 : seriesCount.hashCode) +
      (programCount == null ? 0 : programCount.hashCode) +
      (episodeCount == null ? 0 : episodeCount.hashCode) +
      (songCount == null ? 0 : songCount.hashCode) +
      (albumCount == null ? 0 : albumCount.hashCode) +
      (artistCount == null ? 0 : artistCount.hashCode) +
      (musicVideoCount == null ? 0 : musicVideoCount.hashCode) +
      (lockData == null ? 0 : lockData.hashCode) +
      (width == null ? 0 : width.hashCode) +
      (height == null ? 0 : height.hashCode) +
      (cameraMake == null ? 0 : cameraMake.hashCode) +
      (cameraModel == null ? 0 : cameraModel.hashCode) +
      (software == null ? 0 : software.hashCode) +
      (exposureTime == null ? 0 : exposureTime.hashCode) +
      (focalLength == null ? 0 : focalLength.hashCode) +
      (imageOrientation == null ? 0 : imageOrientation.hashCode) +
      (aperture == null ? 0 : aperture.hashCode) +
      (shutterSpeed == null ? 0 : shutterSpeed.hashCode) +
      (latitude == null ? 0 : latitude.hashCode) +
      (longitude == null ? 0 : longitude.hashCode) +
      (altitude == null ? 0 : altitude.hashCode) +
      (isoSpeedRating == null ? 0 : isoSpeedRating.hashCode) +
      (seriesTimerId == null ? 0 : seriesTimerId.hashCode) +
      (programId == null ? 0 : programId.hashCode) +
      (channelPrimaryImageTag == null ? 0 : channelPrimaryImageTag.hashCode) +
      (startDate == null ? 0 : startDate.hashCode) +
      (completionPercentage == null ? 0 : completionPercentage.hashCode) +
      (isRepeat == null ? 0 : isRepeat.hashCode) +
      (episodeTitle == null ? 0 : episodeTitle.hashCode) +
      (channelType == null ? 0 : channelType.hashCode) +
      (audio == null ? 0 : audio.hashCode) +
      (isMovie == null ? 0 : isMovie.hashCode) +
      (isSports == null ? 0 : isSports.hashCode) +
      (isSeries == null ? 0 : isSeries.hashCode) +
      (isLive == null ? 0 : isLive.hashCode) +
      (isNews == null ? 0 : isNews.hashCode) +
      (isKids == null ? 0 : isKids.hashCode) +
      (isPremiere == null ? 0 : isPremiere.hashCode) +
      (timerId == null ? 0 : timerId.hashCode) +
      (normalizationGain == null ? 0 : normalizationGain.hashCode) +
      (currentProgram == null ? 0 : currentProgram.hashCode);

  factory BaseItemDto.fromJson(Map<String, dynamic> json) =>
      _$BaseItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BaseItemDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
