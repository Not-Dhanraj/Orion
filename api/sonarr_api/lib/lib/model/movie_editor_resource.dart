//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/apply_tags.dart';
import 'package:sonarr_api/lib/model/movie_status_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_editor_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MovieEditorResource {
  /// Returns a new [MovieEditorResource] instance.
  MovieEditorResource({

     this.movieIds,

     this.monitored,

     this.qualityProfileId,

     this.minimumAvailability,

     this.rootFolderPath,

     this.tags,

     this.applyTags,

     this.moveFiles,

     this.deleteFiles,

     this.addImportExclusion,
  });

  @JsonKey(
    
    name: r'movieIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? movieIds;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



  @JsonKey(
    
    name: r'qualityProfileId',
    required: false,
    includeIfNull: false,
  )


  final int? qualityProfileId;



  @JsonKey(
    
    name: r'minimumAvailability',
    required: false,
    includeIfNull: false,
  )


  final MovieStatusType? minimumAvailability;



  @JsonKey(
    
    name: r'rootFolderPath',
    required: false,
    includeIfNull: false,
  )


  final String? rootFolderPath;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final List<int>? tags;



  @JsonKey(
    
    name: r'applyTags',
    required: false,
    includeIfNull: false,
  )


  final ApplyTags? applyTags;



  @JsonKey(
    
    name: r'moveFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? moveFiles;



  @JsonKey(
    
    name: r'deleteFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? deleteFiles;



  @JsonKey(
    
    name: r'addImportExclusion',
    required: false,
    includeIfNull: false,
  )


  final bool? addImportExclusion;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MovieEditorResource &&
      other.movieIds == movieIds &&
      other.monitored == monitored &&
      other.qualityProfileId == qualityProfileId &&
      other.minimumAvailability == minimumAvailability &&
      other.rootFolderPath == rootFolderPath &&
      other.tags == tags &&
      other.applyTags == applyTags &&
      other.moveFiles == moveFiles &&
      other.deleteFiles == deleteFiles &&
      other.addImportExclusion == addImportExclusion;

    @override
    int get hashCode =>
        (movieIds == null ? 0 : movieIds.hashCode) +
        (monitored == null ? 0 : monitored.hashCode) +
        (qualityProfileId == null ? 0 : qualityProfileId.hashCode) +
        minimumAvailability.hashCode +
        (rootFolderPath == null ? 0 : rootFolderPath.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        applyTags.hashCode +
        moveFiles.hashCode +
        deleteFiles.hashCode +
        addImportExclusion.hashCode;

  factory MovieEditorResource.fromJson(Map<String, dynamic> json) => _$MovieEditorResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieEditorResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

