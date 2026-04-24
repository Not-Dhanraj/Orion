//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/rating_type.dart';
import 'package:jelly_api/lib/model/image_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_image_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemoteImageInfo {
  /// Returns a new [RemoteImageInfo] instance.
  RemoteImageInfo({

     this.providerName,

     this.url,

     this.thumbnailUrl,

     this.height,

     this.width,

     this.communityRating,

     this.voteCount,

     this.language,

     this.type,

     this.ratingType,
  });

      /// Gets or sets the name of the provider.
  @JsonKey(
    
    name: r'ProviderName',
    required: false,
    includeIfNull: false,
  )


  final String? providerName;



      /// Gets or sets the URL.
  @JsonKey(
    
    name: r'Url',
    required: false,
    includeIfNull: false,
  )


  final String? url;



      /// Gets or sets a url used for previewing a smaller version.
  @JsonKey(
    
    name: r'ThumbnailUrl',
    required: false,
    includeIfNull: false,
  )


  final String? thumbnailUrl;



      /// Gets or sets the height.
  @JsonKey(
    
    name: r'Height',
    required: false,
    includeIfNull: false,
  )


  final int? height;



      /// Gets or sets the width.
  @JsonKey(
    
    name: r'Width',
    required: false,
    includeIfNull: false,
  )


  final int? width;



      /// Gets or sets the community rating.
  @JsonKey(
    
    name: r'CommunityRating',
    required: false,
    includeIfNull: false,
  )


  final double? communityRating;



      /// Gets or sets the vote count.
  @JsonKey(
    
    name: r'VoteCount',
    required: false,
    includeIfNull: false,
  )


  final int? voteCount;



      /// Gets or sets the language.
  @JsonKey(
    
    name: r'Language',
    required: false,
    includeIfNull: false,
  )


  final String? language;



      /// Gets or sets the type.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final ImageType? type;



      /// Gets or sets the type of the rating.
  @JsonKey(
    
    name: r'RatingType',
    required: false,
    includeIfNull: false,
  )


  final RatingType? ratingType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RemoteImageInfo &&
      other.providerName == providerName &&
      other.url == url &&
      other.thumbnailUrl == thumbnailUrl &&
      other.height == height &&
      other.width == width &&
      other.communityRating == communityRating &&
      other.voteCount == voteCount &&
      other.language == language &&
      other.type == type &&
      other.ratingType == ratingType;

    @override
    int get hashCode =>
        (providerName == null ? 0 : providerName.hashCode) +
        (url == null ? 0 : url.hashCode) +
        (thumbnailUrl == null ? 0 : thumbnailUrl.hashCode) +
        (height == null ? 0 : height.hashCode) +
        (width == null ? 0 : width.hashCode) +
        (communityRating == null ? 0 : communityRating.hashCode) +
        (voteCount == null ? 0 : voteCount.hashCode) +
        (language == null ? 0 : language.hashCode) +
        type.hashCode +
        ratingType.hashCode;

  factory RemoteImageInfo.fromJson(Map<String, dynamic> json) => _$RemoteImageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteImageInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

