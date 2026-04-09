//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/season_statistics_resource.dart';
import 'package:sonarr_api/lib/model/media_cover.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'season_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeasonResource {
  /// Returns a new [SeasonResource] instance.
  SeasonResource({

     this.seasonNumber,

     this.monitored,

     this.statistics,

     this.images,
  });

  @JsonKey(
    
    name: r'seasonNumber',
    required: false,
    includeIfNull: false,
  )


  final int? seasonNumber;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



  @JsonKey(
    
    name: r'statistics',
    required: false,
    includeIfNull: false,
  )


  final SeasonStatisticsResource? statistics;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaCover>? images;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeasonResource &&
      other.seasonNumber == seasonNumber &&
      other.monitored == monitored &&
      other.statistics == statistics &&
      other.images == images;

    @override
    int get hashCode =>
        seasonNumber.hashCode +
        monitored.hashCode +
        statistics.hashCode +
        (images == null ? 0 : images.hashCode);

  factory SeasonResource.fromJson(Map<String, dynamic> json) => _$SeasonResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

