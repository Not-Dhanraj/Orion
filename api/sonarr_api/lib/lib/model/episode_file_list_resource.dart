//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/quality_model.dart';
import 'package:sonarr_api/lib/model/language.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episode_file_list_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EpisodeFileListResource {
  /// Returns a new [EpisodeFileListResource] instance.
  EpisodeFileListResource({

     this.episodeFileIds,

     this.languages,

     this.quality,

     this.sceneName,

     this.releaseGroup,
  });

  @JsonKey(
    
    name: r'episodeFileIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? episodeFileIds;



  @JsonKey(
    
    name: r'languages',
    required: false,
    includeIfNull: false,
  )


  final List<Language>? languages;



  @JsonKey(
    
    name: r'quality',
    required: false,
    includeIfNull: false,
  )


  final QualityModel? quality;



  @JsonKey(
    
    name: r'sceneName',
    required: false,
    includeIfNull: false,
  )


  final String? sceneName;



  @JsonKey(
    
    name: r'releaseGroup',
    required: false,
    includeIfNull: false,
  )


  final String? releaseGroup;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EpisodeFileListResource &&
      other.episodeFileIds == episodeFileIds &&
      other.languages == languages &&
      other.quality == quality &&
      other.sceneName == sceneName &&
      other.releaseGroup == releaseGroup;

    @override
    int get hashCode =>
        (episodeFileIds == null ? 0 : episodeFileIds.hashCode) +
        (languages == null ? 0 : languages.hashCode) +
        quality.hashCode +
        (sceneName == null ? 0 : sceneName.hashCode) +
        (releaseGroup == null ? 0 : releaseGroup.hashCode);

  factory EpisodeFileListResource.fromJson(Map<String, dynamic> json) => _$EpisodeFileListResourceFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodeFileListResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

