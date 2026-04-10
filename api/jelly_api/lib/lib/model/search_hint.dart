//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/base_item_kind.dart';
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_hint.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SearchHint {
  /// Returns a new [SearchHint] instance.
  SearchHint({
    this.itemId,

    this.id,

    this.name,

    this.matchedTerm,

    this.indexNumber,

    this.productionYear,

    this.parentIndexNumber,

    this.primaryImageTag,

    this.thumbImageTag,

    this.thumbImageItemId,

    this.backdropImageTag,

    this.backdropImageItemId,

    this.type,

    this.isFolder,

    this.runTimeTicks,

    this.mediaType = MediaType.unknown,

    this.startDate,

    this.endDate,

    this.series,

    this.status,

    this.album,

    this.albumId,

    this.albumArtist,

    this.artists,

    this.songCount,

    this.episodeCount,

    this.channelId,

    this.channelName,

    this.primaryImageAspectRatio,
  });

  /// Gets or sets the item id.
  @Deprecated('itemId has been deprecated')
  @JsonKey(name: r'ItemId', required: false, includeIfNull: false)
  final String? itemId;

  /// Gets or sets the item id.
  @JsonKey(name: r'Id', required: false, includeIfNull: false)
  final String? id;

  /// Gets or sets the name.
  @JsonKey(name: r'Name', required: false, includeIfNull: false)
  final String? name;

  /// Gets or sets the matched term.
  @JsonKey(name: r'MatchedTerm', required: false, includeIfNull: false)
  final String? matchedTerm;

  /// Gets or sets the index number.
  @JsonKey(name: r'IndexNumber', required: false, includeIfNull: false)
  final int? indexNumber;

  /// Gets or sets the production year.
  @JsonKey(name: r'ProductionYear', required: false, includeIfNull: false)
  final int? productionYear;

  /// Gets or sets the parent index number.
  @JsonKey(name: r'ParentIndexNumber', required: false, includeIfNull: false)
  final int? parentIndexNumber;

  /// Gets or sets the image tag.
  @JsonKey(name: r'PrimaryImageTag', required: false, includeIfNull: false)
  final String? primaryImageTag;

  /// Gets or sets the thumb image tag.
  @JsonKey(name: r'ThumbImageTag', required: false, includeIfNull: false)
  final String? thumbImageTag;

  /// Gets or sets the thumb image item identifier.
  @JsonKey(name: r'ThumbImageItemId', required: false, includeIfNull: false)
  final String? thumbImageItemId;

  /// Gets or sets the backdrop image tag.
  @JsonKey(name: r'BackdropImageTag', required: false, includeIfNull: false)
  final String? backdropImageTag;

  /// Gets or sets the backdrop image item identifier.
  @JsonKey(name: r'BackdropImageItemId', required: false, includeIfNull: false)
  final String? backdropImageItemId;

  /// Gets or sets the type.
  @JsonKey(name: r'Type', required: false, includeIfNull: false)
  final BaseItemKind? type;

  /// Gets or sets a value indicating whether this instance is folder.
  @JsonKey(name: r'IsFolder', required: false, includeIfNull: false)
  final bool? isFolder;

  /// Gets or sets the run time ticks.
  @JsonKey(name: r'RunTimeTicks', required: false, includeIfNull: false)
  final int? runTimeTicks;

  /// Gets or sets the type of the media.
  @JsonKey(
    defaultValue: MediaType.unknown,
    name: r'MediaType',
    required: false,
    includeIfNull: false,
  )
  final MediaType? mediaType;

  /// Gets or sets the start date.
  @JsonKey(name: r'StartDate', required: false, includeIfNull: false)
  final DateTime? startDate;

  /// Gets or sets the end date.
  @JsonKey(name: r'EndDate', required: false, includeIfNull: false)
  final DateTime? endDate;

  /// Gets or sets the series.
  @JsonKey(name: r'Series', required: false, includeIfNull: false)
  final String? series;

  /// Gets or sets the status.
  @JsonKey(name: r'Status', required: false, includeIfNull: false)
  final String? status;

  /// Gets or sets the album.
  @JsonKey(name: r'Album', required: false, includeIfNull: false)
  final String? album;

  /// Gets or sets the album id.
  @JsonKey(name: r'AlbumId', required: false, includeIfNull: false)
  final String? albumId;

  /// Gets or sets the album artist.
  @JsonKey(name: r'AlbumArtist', required: false, includeIfNull: false)
  final String? albumArtist;

  /// Gets or sets the artists.
  @JsonKey(name: r'Artists', required: false, includeIfNull: false)
  final List<String>? artists;

  /// Gets or sets the song count.
  @JsonKey(name: r'SongCount', required: false, includeIfNull: false)
  final int? songCount;

  /// Gets or sets the episode count.
  @JsonKey(name: r'EpisodeCount', required: false, includeIfNull: false)
  final int? episodeCount;

  /// Gets or sets the channel identifier.
  @JsonKey(name: r'ChannelId', required: false, includeIfNull: false)
  final String? channelId;

  /// Gets or sets the name of the channel.
  @JsonKey(name: r'ChannelName', required: false, includeIfNull: false)
  final String? channelName;

  /// Gets or sets the primary image aspect ratio.
  @JsonKey(
    name: r'PrimaryImageAspectRatio',
    required: false,
    includeIfNull: false,
  )
  final double? primaryImageAspectRatio;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchHint &&
          other.itemId == itemId &&
          other.id == id &&
          other.name == name &&
          other.matchedTerm == matchedTerm &&
          other.indexNumber == indexNumber &&
          other.productionYear == productionYear &&
          other.parentIndexNumber == parentIndexNumber &&
          other.primaryImageTag == primaryImageTag &&
          other.thumbImageTag == thumbImageTag &&
          other.thumbImageItemId == thumbImageItemId &&
          other.backdropImageTag == backdropImageTag &&
          other.backdropImageItemId == backdropImageItemId &&
          other.type == type &&
          other.isFolder == isFolder &&
          other.runTimeTicks == runTimeTicks &&
          other.mediaType == mediaType &&
          other.startDate == startDate &&
          other.endDate == endDate &&
          other.series == series &&
          other.status == status &&
          other.album == album &&
          other.albumId == albumId &&
          other.albumArtist == albumArtist &&
          other.artists == artists &&
          other.songCount == songCount &&
          other.episodeCount == episodeCount &&
          other.channelId == channelId &&
          other.channelName == channelName &&
          other.primaryImageAspectRatio == primaryImageAspectRatio;

  @override
  int get hashCode =>
      itemId.hashCode +
      id.hashCode +
      name.hashCode +
      (matchedTerm == null ? 0 : matchedTerm.hashCode) +
      (indexNumber == null ? 0 : indexNumber.hashCode) +
      (productionYear == null ? 0 : productionYear.hashCode) +
      (parentIndexNumber == null ? 0 : parentIndexNumber.hashCode) +
      (primaryImageTag == null ? 0 : primaryImageTag.hashCode) +
      (thumbImageTag == null ? 0 : thumbImageTag.hashCode) +
      (thumbImageItemId == null ? 0 : thumbImageItemId.hashCode) +
      (backdropImageTag == null ? 0 : backdropImageTag.hashCode) +
      (backdropImageItemId == null ? 0 : backdropImageItemId.hashCode) +
      type.hashCode +
      (isFolder == null ? 0 : isFolder.hashCode) +
      (runTimeTicks == null ? 0 : runTimeTicks.hashCode) +
      mediaType.hashCode +
      (startDate == null ? 0 : startDate.hashCode) +
      (endDate == null ? 0 : endDate.hashCode) +
      (series == null ? 0 : series.hashCode) +
      (status == null ? 0 : status.hashCode) +
      (album == null ? 0 : album.hashCode) +
      (albumId == null ? 0 : albumId.hashCode) +
      (albumArtist == null ? 0 : albumArtist.hashCode) +
      artists.hashCode +
      (songCount == null ? 0 : songCount.hashCode) +
      (episodeCount == null ? 0 : episodeCount.hashCode) +
      (channelId == null ? 0 : channelId.hashCode) +
      (channelName == null ? 0 : channelName.hashCode) +
      (primaryImageAspectRatio == null ? 0 : primaryImageAspectRatio.hashCode);

  factory SearchHint.fromJson(Map<String, dynamic> json) =>
      _$SearchHintFromJson(json);

  Map<String, dynamic> toJson() => _$SearchHintToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
