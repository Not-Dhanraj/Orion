//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_search_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemoteSearchResult {
  /// Returns a new [RemoteSearchResult] instance.
  RemoteSearchResult({

     this.name,

     this.providerIds,

     this.productionYear,

     this.indexNumber,

     this.indexNumberEnd,

     this.parentIndexNumber,

     this.premiereDate,

     this.imageUrl,

     this.searchProviderName,

     this.overview,

     this.albumArtist,

     this.artists,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the provider ids.
  @JsonKey(
    
    name: r'ProviderIds',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? providerIds;



      /// Gets or sets the year.
  @JsonKey(
    
    name: r'ProductionYear',
    required: false,
    includeIfNull: false,
  )


  final int? productionYear;



  @JsonKey(
    
    name: r'IndexNumber',
    required: false,
    includeIfNull: false,
  )


  final int? indexNumber;



  @JsonKey(
    
    name: r'IndexNumberEnd',
    required: false,
    includeIfNull: false,
  )


  final int? indexNumberEnd;



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
    
    name: r'ImageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? imageUrl;



  @JsonKey(
    
    name: r'SearchProviderName',
    required: false,
    includeIfNull: false,
  )


  final String? searchProviderName;



  @JsonKey(
    
    name: r'Overview',
    required: false,
    includeIfNull: false,
  )


  final String? overview;



  @JsonKey(
    
    name: r'AlbumArtist',
    required: false,
    includeIfNull: false,
  )


  final RemoteSearchResult? albumArtist;



  @JsonKey(
    
    name: r'Artists',
    required: false,
    includeIfNull: false,
  )


  final List<RemoteSearchResult>? artists;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RemoteSearchResult &&
      other.name == name &&
      other.providerIds == providerIds &&
      other.productionYear == productionYear &&
      other.indexNumber == indexNumber &&
      other.indexNumberEnd == indexNumberEnd &&
      other.parentIndexNumber == parentIndexNumber &&
      other.premiereDate == premiereDate &&
      other.imageUrl == imageUrl &&
      other.searchProviderName == searchProviderName &&
      other.overview == overview &&
      other.albumArtist == albumArtist &&
      other.artists == artists;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (providerIds == null ? 0 : providerIds.hashCode) +
        (productionYear == null ? 0 : productionYear.hashCode) +
        (indexNumber == null ? 0 : indexNumber.hashCode) +
        (indexNumberEnd == null ? 0 : indexNumberEnd.hashCode) +
        (parentIndexNumber == null ? 0 : parentIndexNumber.hashCode) +
        (premiereDate == null ? 0 : premiereDate.hashCode) +
        (imageUrl == null ? 0 : imageUrl.hashCode) +
        (searchProviderName == null ? 0 : searchProviderName.hashCode) +
        (overview == null ? 0 : overview.hashCode) +
        (albumArtist == null ? 0 : albumArtist.hashCode) +
        (artists == null ? 0 : artists.hashCode);

  factory RemoteSearchResult.fromJson(Map<String, dynamic> json) => _$RemoteSearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteSearchResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

