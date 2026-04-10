//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/name_value_pair.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listings_provider_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ListingsProviderInfo {
  /// Returns a new [ListingsProviderInfo] instance.
  ListingsProviderInfo({

     this.id,

     this.type,

     this.username,

     this.password,

     this.listingsId,

     this.zipCode,

     this.country,

     this.path,

     this.enabledTuners,

     this.enableAllTuners,

     this.newsCategories,

     this.sportsCategories,

     this.kidsCategories,

     this.movieCategories,

     this.channelMappings,

     this.moviePrefix,

     this.preferredLanguage,

     this.userAgent,
  });

  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final String? type;



  @JsonKey(
    
    name: r'Username',
    required: false,
    includeIfNull: false,
  )


  final String? username;



  @JsonKey(
    
    name: r'Password',
    required: false,
    includeIfNull: false,
  )


  final String? password;



  @JsonKey(
    
    name: r'ListingsId',
    required: false,
    includeIfNull: false,
  )


  final String? listingsId;



  @JsonKey(
    
    name: r'ZipCode',
    required: false,
    includeIfNull: false,
  )


  final String? zipCode;



  @JsonKey(
    
    name: r'Country',
    required: false,
    includeIfNull: false,
  )


  final String? country;



  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'EnabledTuners',
    required: false,
    includeIfNull: false,
  )


  final List<String>? enabledTuners;



  @JsonKey(
    
    name: r'EnableAllTuners',
    required: false,
    includeIfNull: false,
  )


  final bool? enableAllTuners;



  @JsonKey(
    
    name: r'NewsCategories',
    required: false,
    includeIfNull: false,
  )


  final List<String>? newsCategories;



  @JsonKey(
    
    name: r'SportsCategories',
    required: false,
    includeIfNull: false,
  )


  final List<String>? sportsCategories;



  @JsonKey(
    
    name: r'KidsCategories',
    required: false,
    includeIfNull: false,
  )


  final List<String>? kidsCategories;



  @JsonKey(
    
    name: r'MovieCategories',
    required: false,
    includeIfNull: false,
  )


  final List<String>? movieCategories;



  @JsonKey(
    
    name: r'ChannelMappings',
    required: false,
    includeIfNull: false,
  )


  final List<NameValuePair>? channelMappings;



  @JsonKey(
    
    name: r'MoviePrefix',
    required: false,
    includeIfNull: false,
  )


  final String? moviePrefix;



  @JsonKey(
    
    name: r'PreferredLanguage',
    required: false,
    includeIfNull: false,
  )


  final String? preferredLanguage;



  @JsonKey(
    
    name: r'UserAgent',
    required: false,
    includeIfNull: false,
  )


  final String? userAgent;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ListingsProviderInfo &&
      other.id == id &&
      other.type == type &&
      other.username == username &&
      other.password == password &&
      other.listingsId == listingsId &&
      other.zipCode == zipCode &&
      other.country == country &&
      other.path == path &&
      other.enabledTuners == enabledTuners &&
      other.enableAllTuners == enableAllTuners &&
      other.newsCategories == newsCategories &&
      other.sportsCategories == sportsCategories &&
      other.kidsCategories == kidsCategories &&
      other.movieCategories == movieCategories &&
      other.channelMappings == channelMappings &&
      other.moviePrefix == moviePrefix &&
      other.preferredLanguage == preferredLanguage &&
      other.userAgent == userAgent;

    @override
    int get hashCode =>
        (id == null ? 0 : id.hashCode) +
        (type == null ? 0 : type.hashCode) +
        (username == null ? 0 : username.hashCode) +
        (password == null ? 0 : password.hashCode) +
        (listingsId == null ? 0 : listingsId.hashCode) +
        (zipCode == null ? 0 : zipCode.hashCode) +
        (country == null ? 0 : country.hashCode) +
        (path == null ? 0 : path.hashCode) +
        (enabledTuners == null ? 0 : enabledTuners.hashCode) +
        enableAllTuners.hashCode +
        (newsCategories == null ? 0 : newsCategories.hashCode) +
        (sportsCategories == null ? 0 : sportsCategories.hashCode) +
        (kidsCategories == null ? 0 : kidsCategories.hashCode) +
        (movieCategories == null ? 0 : movieCategories.hashCode) +
        (channelMappings == null ? 0 : channelMappings.hashCode) +
        (moviePrefix == null ? 0 : moviePrefix.hashCode) +
        (preferredLanguage == null ? 0 : preferredLanguage.hashCode) +
        (userAgent == null ? 0 : userAgent.hashCode);

  factory ListingsProviderInfo.fromJson(Map<String, dynamic> json) => _$ListingsProviderInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ListingsProviderInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

