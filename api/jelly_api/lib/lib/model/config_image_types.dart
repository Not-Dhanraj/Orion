//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'config_image_types.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ConfigImageTypes {
  /// Returns a new [ConfigImageTypes] instance.
  ConfigImageTypes({

     this.backdropSizes,

     this.baseUrl,

     this.logoSizes,

     this.posterSizes,

     this.profileSizes,

     this.secureBaseUrl,

     this.stillSizes,
  });

  @JsonKey(
    
    name: r'BackdropSizes',
    required: false,
    includeIfNull: false,
  )


  final List<String>? backdropSizes;



  @JsonKey(
    
    name: r'BaseUrl',
    required: false,
    includeIfNull: false,
  )


  final String? baseUrl;



  @JsonKey(
    
    name: r'LogoSizes',
    required: false,
    includeIfNull: false,
  )


  final List<String>? logoSizes;



  @JsonKey(
    
    name: r'PosterSizes',
    required: false,
    includeIfNull: false,
  )


  final List<String>? posterSizes;



  @JsonKey(
    
    name: r'ProfileSizes',
    required: false,
    includeIfNull: false,
  )


  final List<String>? profileSizes;



  @JsonKey(
    
    name: r'SecureBaseUrl',
    required: false,
    includeIfNull: false,
  )


  final String? secureBaseUrl;



  @JsonKey(
    
    name: r'StillSizes',
    required: false,
    includeIfNull: false,
  )


  final List<String>? stillSizes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ConfigImageTypes &&
      other.backdropSizes == backdropSizes &&
      other.baseUrl == baseUrl &&
      other.logoSizes == logoSizes &&
      other.posterSizes == posterSizes &&
      other.profileSizes == profileSizes &&
      other.secureBaseUrl == secureBaseUrl &&
      other.stillSizes == stillSizes;

    @override
    int get hashCode =>
        (backdropSizes == null ? 0 : backdropSizes.hashCode) +
        (baseUrl == null ? 0 : baseUrl.hashCode) +
        (logoSizes == null ? 0 : logoSizes.hashCode) +
        (posterSizes == null ? 0 : posterSizes.hashCode) +
        (profileSizes == null ? 0 : profileSizes.hashCode) +
        (secureBaseUrl == null ? 0 : secureBaseUrl.hashCode) +
        (stillSizes == null ? 0 : stillSizes.hashCode);

  factory ConfigImageTypes.fromJson(Map<String, dynamic> json) => _$ConfigImageTypesFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigImageTypesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

