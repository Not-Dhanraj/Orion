//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'alternate_title_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AlternateTitleResource {
  /// Returns a new [AlternateTitleResource] instance.
  AlternateTitleResource({

     this.title,

     this.seasonNumber,

     this.sceneSeasonNumber,

     this.sceneOrigin,

     this.comment,
  });

  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'sceneSeasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? sceneSeasonNumber;



  @JsonKey(
    
    name: r'sceneOrigin',
    required: false,
    includeIfNull: false,
  )


  final String? sceneOrigin;



  @JsonKey(
    
    name: r'comment',
    required: false,
    includeIfNull: false,
  )


  final String? comment;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AlternateTitleResource &&
      other.title == title &&
      other.seasonNumber == seasonNumber &&
      other.sceneSeasonNumber == sceneSeasonNumber &&
      other.sceneOrigin == sceneOrigin &&
      other.comment == comment;

    @override
    int get hashCode =>
        (title == null ? 0 : title.hashCode) +
        (seasonNumber == null ? 0 : seasonNumber.hashCode) +
        (sceneSeasonNumber == null ? 0 : sceneSeasonNumber.hashCode) +
        (sceneOrigin == null ? 0 : sceneOrigin.hashCode) +
        (comment == null ? 0 : comment.hashCode);

  factory AlternateTitleResource.fromJson(Map<String, dynamic> json) => _$AlternateTitleResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AlternateTitleResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

