//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_statistics_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MovieStatisticsResource {
  /// Returns a new [MovieStatisticsResource] instance.
  MovieStatisticsResource({

     this.movieFileCount,

     this.sizeOnDisk,

     this.releaseGroups,
  });

  @JsonKey(
    
    name: r'movieFileCount',
    required: false,
    includeIfNull: false,
  )


  final int? movieFileCount;



  @JsonKey(
    
    name: r'sizeOnDisk',
    required: false,
    includeIfNull: false,
  )


  final int? sizeOnDisk;



  @JsonKey(
    
    name: r'releaseGroups',
    required: false,
    includeIfNull: false,
  )


  final List<String>? releaseGroups;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MovieStatisticsResource &&
      other.movieFileCount == movieFileCount &&
      other.sizeOnDisk == sizeOnDisk &&
      other.releaseGroups == releaseGroups;

    @override
    int get hashCode =>
        movieFileCount.hashCode +
        sizeOnDisk.hashCode +
        (releaseGroups == null ? 0 : releaseGroups.hashCode);

  factory MovieStatisticsResource.fromJson(Map<String, dynamic> json) => _$MovieStatisticsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$MovieStatisticsResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

