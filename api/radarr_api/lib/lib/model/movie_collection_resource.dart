//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_collection_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MovieCollectionResource {
  /// Returns a new [MovieCollectionResource] instance.
  MovieCollectionResource({

     this.title,

     this.tmdbId,
  });

  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'tmdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tmdbId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MovieCollectionResource &&
      other.title == title &&
      other.tmdbId == tmdbId;

    @override
    int get hashCode =>
        (title == null ? 0 : title.hashCode) +
        tmdbId.hashCode;

  factory MovieCollectionResource.fromJson(Map<String, dynamic> json) => _$MovieCollectionResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieCollectionResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

