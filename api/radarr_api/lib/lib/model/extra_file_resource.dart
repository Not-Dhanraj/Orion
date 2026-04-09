//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/extra_file_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'extra_file_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ExtraFileResource {
  /// Returns a new [ExtraFileResource] instance.
  ExtraFileResource({

     this.id,

     this.movieId,

     this.movieFileId,

     this.relativePath,

     this.extension_,

     this.languageTags,

     this.title,

     this.type,
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
    
    name: r'relativePath',
    required: false,
    includeIfNull: false,
  )


  final String? relativePath;



  @JsonKey(
    
    name: r'extension',
    required: false,
    includeIfNull: false,
  )


  final String? extension_;



  @JsonKey(
    
    name: r'languageTags',
    required: false,
    includeIfNull: false,
  )


  final List<String>? languageTags;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final ExtraFileType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ExtraFileResource &&
      other.id == id &&
      other.movieId == movieId &&
      other.movieFileId == movieFileId &&
      other.relativePath == relativePath &&
      other.extension_ == extension_ &&
      other.languageTags == languageTags &&
      other.title == title &&
      other.type == type;

    @override
    int get hashCode =>
        id.hashCode +
        movieId.hashCode +
        (movieFileId == null ? 0 : movieFileId.hashCode) +
        (relativePath == null ? 0 : relativePath.hashCode) +
        (extension_ == null ? 0 : extension_.hashCode) +
        (languageTags == null ? 0 : languageTags.hashCode) +
        (title == null ? 0 : title.hashCode) +
        type.hashCode;

  factory ExtraFileResource.fromJson(Map<String, dynamic> json) => _$ExtraFileResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraFileResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

