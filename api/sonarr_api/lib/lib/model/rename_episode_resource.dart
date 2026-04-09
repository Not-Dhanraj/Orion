//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rename_episode_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RenameEpisodeResource {
  /// Returns a new [RenameEpisodeResource] instance.
  RenameEpisodeResource({

     this.id,

     this.seriesId,

     this.seasonNumber,

     this.episodeNumbers,

     this.episodeFileId,

     this.existingPath,

     this.newPath,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'seriesId',
    required: false,
    includeIfNull: false,
  )


  final int? seriesId;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'episodeNumbers',
    required: false,
    includeIfNull: false,
  )


  final List<int>? episodeNumbers;



  @JsonKey(
    
    name: r'episodeFileId',
    required: false,
    includeIfNull: false,
  )


  final int? episodeFileId;



  @JsonKey(
    
    name: r'existingPath',
    required: false,
    includeIfNull: false,
  )


  final String? existingPath;



  @JsonKey(
    
    name: r'newPath',
    required: false,
    includeIfNull: false,
  )


  final String? newPath;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RenameEpisodeResource &&
      other.id == id &&
      other.seriesId == seriesId &&
      other.seasonNumber == seasonNumber &&
      other.episodeNumbers == episodeNumbers &&
      other.episodeFileId == episodeFileId &&
      other.existingPath == existingPath &&
      other.newPath == newPath;

    @override
    int get hashCode =>
        id.hashCode +
        seriesId.hashCode +
        seasonNumber.hashCode +
        (episodeNumbers == null ? 0 : episodeNumbers.hashCode) +
        episodeFileId.hashCode +
        (existingPath == null ? 0 : existingPath.hashCode) +
        (newPath == null ? 0 : newPath.hashCode);

  factory RenameEpisodeResource.fromJson(Map<String, dynamic> json) => _$RenameEpisodeResourceFromJson(json);

  Map<String, dynamic> toJson() => _$RenameEpisodeResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

