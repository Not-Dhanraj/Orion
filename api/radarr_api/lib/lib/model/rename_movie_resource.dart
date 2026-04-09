//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rename_movie_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RenameMovieResource {
  /// Returns a new [RenameMovieResource] instance.
  RenameMovieResource({

     this.id,

     this.movieId,

     this.movieFileId,

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
    
    name: r'movieId',
    required: false,
    includeIfNull: false,
  )


  final int? movieId;



  @JsonKey(
    
    name: r'movieFileId',
    required: false,
    includeIfNull: false,
  )


  final int? movieFileId;



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
    bool operator ==(Object other) => identical(this, other) || other is RenameMovieResource &&
      other.id == id &&
      other.movieId == movieId &&
      other.movieFileId == movieFileId &&
      other.existingPath == existingPath &&
      other.newPath == newPath;

    @override
    int get hashCode =>
        id.hashCode +
        movieId.hashCode +
        movieFileId.hashCode +
        (existingPath == null ? 0 : existingPath.hashCode) +
        (newPath == null ? 0 : newPath.hashCode);

  factory RenameMovieResource.fromJson(Map<String, dynamic> json) => _$RenameMovieResourceFromJson(json);

  Map<String, dynamic> toJson() => _$RenameMovieResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

