//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/song_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'album_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AlbumInfo {
  /// Returns a new [AlbumInfo] instance.
  AlbumInfo({

     this.name,

     this.originalTitle,

     this.path,

     this.metadataLanguage,

     this.metadataCountryCode,

     this.providerIds,

     this.year,

     this.indexNumber,

     this.parentIndexNumber,

     this.premiereDate,

     this.isAutomated,

     this.albumArtists,

     this.artistProviderIds,

     this.songInfos,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the original title.
  @JsonKey(
    
    name: r'OriginalTitle',
    required: false,
    includeIfNull: false,
  )


  final String? originalTitle;



      /// Gets or sets the path.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets or sets the metadata language.
  @JsonKey(
    
    name: r'MetadataLanguage',
    required: false,
    includeIfNull: false,
  )


  final String? metadataLanguage;



      /// Gets or sets the metadata country code.
  @JsonKey(
    
    name: r'MetadataCountryCode',
    required: false,
    includeIfNull: false,
  )


  final String? metadataCountryCode;



      /// Gets or sets the provider ids.
  @JsonKey(
    
    name: r'ProviderIds',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? providerIds;



      /// Gets or sets the year.
  @JsonKey(
    
    name: r'Year',
    required: false,
    includeIfNull: false,
  )


  final int? year;



  @JsonKey(
    
    name: r'IndexNumber',
    required: false,
    includeIfNull: false,
  )


  final int? indexNumber;



  @JsonKey(
    
    name: r'ParentIndexNumber',
    required: false,
    includeIfNull: false,
  )


  final int? parentIndexNumber;



  @JsonKey(
    
    name: r'PremiereDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? premiereDate;



  @JsonKey(
    
    name: r'IsAutomated',
    required: false,
    includeIfNull: false,
  )


  final bool? isAutomated;



      /// Gets or sets the album artist.
  @JsonKey(
    
    name: r'AlbumArtists',
    required: false,
    includeIfNull: false,
  )


  final List<String>? albumArtists;



      /// Gets or sets the artist provider ids.
  @JsonKey(
    
    name: r'ArtistProviderIds',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? artistProviderIds;



  @JsonKey(
    
    name: r'SongInfos',
    required: false,
    includeIfNull: false,
  )


  final List<SongInfo>? songInfos;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AlbumInfo &&
      other.name == name &&
      other.originalTitle == originalTitle &&
      other.path == path &&
      other.metadataLanguage == metadataLanguage &&
      other.metadataCountryCode == metadataCountryCode &&
      other.providerIds == providerIds &&
      other.year == year &&
      other.indexNumber == indexNumber &&
      other.parentIndexNumber == parentIndexNumber &&
      other.premiereDate == premiereDate &&
      other.isAutomated == isAutomated &&
      other.albumArtists == albumArtists &&
      other.artistProviderIds == artistProviderIds &&
      other.songInfos == songInfos;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (originalTitle == null ? 0 : originalTitle.hashCode) +
        (path == null ? 0 : path.hashCode) +
        (metadataLanguage == null ? 0 : metadataLanguage.hashCode) +
        (metadataCountryCode == null ? 0 : metadataCountryCode.hashCode) +
        (providerIds == null ? 0 : providerIds.hashCode) +
        (year == null ? 0 : year.hashCode) +
        (indexNumber == null ? 0 : indexNumber.hashCode) +
        (parentIndexNumber == null ? 0 : parentIndexNumber.hashCode) +
        (premiereDate == null ? 0 : premiereDate.hashCode) +
        isAutomated.hashCode +
        albumArtists.hashCode +
        artistProviderIds.hashCode +
        songInfos.hashCode;

  factory AlbumInfo.fromJson(Map<String, dynamic> json) => _$AlbumInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

