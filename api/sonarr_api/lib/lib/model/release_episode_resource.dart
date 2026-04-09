//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'release_episode_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReleaseEpisodeResource {
  /// Returns a new [ReleaseEpisodeResource] instance.
  ReleaseEpisodeResource({

     this.id,

     this.seasonNumber,

     this.episodeNumber,

     this.absoluteEpisodeNumber,

     this.title,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'episodeNumber',
    required: false,
    includeIfNull: false,
  )


  final int? episodeNumber;



  @JsonKey(
    
    name: r'absoluteEpisodeNumber',
    required: false,
    includeIfNull: false,
  )


  final int? absoluteEpisodeNumber;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReleaseEpisodeResource &&
      other.id == id &&
      other.seasonNumber == seasonNumber &&
      other.episodeNumber == episodeNumber &&
      other.absoluteEpisodeNumber == absoluteEpisodeNumber &&
      other.title == title;

    @override
    int get hashCode =>
        id.hashCode +
        seasonNumber.hashCode +
        episodeNumber.hashCode +
        (absoluteEpisodeNumber == null ? 0 : absoluteEpisodeNumber.hashCode) +
        (title == null ? 0 : title.hashCode);

  factory ReleaseEpisodeResource.fromJson(Map<String, dynamic> json) => _$ReleaseEpisodeResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ReleaseEpisodeResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

