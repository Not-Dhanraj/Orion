//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'naming_config_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NamingConfigResource {
  /// Returns a new [NamingConfigResource] instance.
  NamingConfigResource({

     this.id,

     this.renameEpisodes,

     this.replaceIllegalCharacters,

     this.colonReplacementFormat,

     this.customColonReplacementFormat,

     this.multiEpisodeStyle,

     this.standardEpisodeFormat,

     this.dailyEpisodeFormat,

     this.animeEpisodeFormat,

     this.seriesFolderFormat,

     this.seasonFolderFormat,

     this.specialsFolderFormat,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'renameEpisodes',
    required: false,
    includeIfNull: false,
  )


  final bool? renameEpisodes;



  @JsonKey(
    
    name: r'replaceIllegalCharacters',
    required: false,
    includeIfNull: false,
  )


  final bool? replaceIllegalCharacters;



  @JsonKey(
    
    name: r'colonReplacementFormat',
    required: false,
    includeIfNull: false,
  )


  final int? colonReplacementFormat;



  @JsonKey(
    
    name: r'customColonReplacementFormat',
    required: false,
    includeIfNull: false,
  )


  final String? customColonReplacementFormat;



  @JsonKey(
    
    name: r'multiEpisodeStyle',
    required: false,
    includeIfNull: false,
  )


  final int? multiEpisodeStyle;



  @JsonKey(
    
    name: r'standardEpisodeFormat',
    required: false,
    includeIfNull: false,
  )


  final String? standardEpisodeFormat;



  @JsonKey(
    
    name: r'dailyEpisodeFormat',
    required: false,
    includeIfNull: false,
  )


  final String? dailyEpisodeFormat;



  @JsonKey(
    
    name: r'animeEpisodeFormat',
    required: false,
    includeIfNull: false,
  )


  final String? animeEpisodeFormat;



  @JsonKey(
    
    name: r'seriesFolderFormat',
    required: false,
    includeIfNull: false,
  )


  final String? seriesFolderFormat;



  @JsonKey(
    
    name: r'seasonFolderFormat',
    required: false,
    includeIfNull: false,
  )


  final String? seasonFolderFormat;



  @JsonKey(
    
    name: r'specialsFolderFormat',
    required: false,
    includeIfNull: false,
  )


  final String? specialsFolderFormat;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NamingConfigResource &&
      other.id == id &&
      other.renameEpisodes == renameEpisodes &&
      other.replaceIllegalCharacters == replaceIllegalCharacters &&
      other.colonReplacementFormat == colonReplacementFormat &&
      other.customColonReplacementFormat == customColonReplacementFormat &&
      other.multiEpisodeStyle == multiEpisodeStyle &&
      other.standardEpisodeFormat == standardEpisodeFormat &&
      other.dailyEpisodeFormat == dailyEpisodeFormat &&
      other.animeEpisodeFormat == animeEpisodeFormat &&
      other.seriesFolderFormat == seriesFolderFormat &&
      other.seasonFolderFormat == seasonFolderFormat &&
      other.specialsFolderFormat == specialsFolderFormat;

    @override
    int get hashCode =>
        id.hashCode +
        renameEpisodes.hashCode +
        replaceIllegalCharacters.hashCode +
        colonReplacementFormat.hashCode +
        (customColonReplacementFormat == null ? 0 : customColonReplacementFormat.hashCode) +
        multiEpisodeStyle.hashCode +
        (standardEpisodeFormat == null ? 0 : standardEpisodeFormat.hashCode) +
        (dailyEpisodeFormat == null ? 0 : dailyEpisodeFormat.hashCode) +
        (animeEpisodeFormat == null ? 0 : animeEpisodeFormat.hashCode) +
        (seriesFolderFormat == null ? 0 : seriesFolderFormat.hashCode) +
        (seasonFolderFormat == null ? 0 : seasonFolderFormat.hashCode) +
        (specialsFolderFormat == null ? 0 : specialsFolderFormat.hashCode);

  factory NamingConfigResource.fromJson(Map<String, dynamic> json) => _$NamingConfigResourceFromJson(json);

  Map<String, dynamic> toJson() => _$NamingConfigResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

