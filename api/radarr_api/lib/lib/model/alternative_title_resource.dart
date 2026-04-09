//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:radarr_api/lib/model/source_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'alternative_title_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AlternativeTitleResource {
  /// Returns a new [AlternativeTitleResource] instance.
  AlternativeTitleResource({

     this.id,

     this.sourceType,

     this.movieMetadataId,

     this.title,

     this.cleanTitle,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'sourceType',
    required: false,
    includeIfNull: false,
  )


  final SourceType? sourceType;



  @JsonKey(
    
    name: r'movieMetadataId',
    required: false,
    includeIfNull: false,
  )


  final int? movieMetadataId;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'cleanTitle',
    required: false,
    includeIfNull: false,
  )


  final String? cleanTitle;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AlternativeTitleResource &&
      other.id == id &&
      other.sourceType == sourceType &&
      other.movieMetadataId == movieMetadataId &&
      other.title == title &&
      other.cleanTitle == cleanTitle;

    @override
    int get hashCode =>
        id.hashCode +
        sourceType.hashCode +
        movieMetadataId.hashCode +
        (title == null ? 0 : title.hashCode) +
        (cleanTitle == null ? 0 : cleanTitle.hashCode);

  factory AlternativeTitleResource.fromJson(Map<String, dynamic> json) => _$AlternativeTitleResourceFromJson(json);

  Map<String, dynamic> toJson() => _$AlternativeTitleResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

