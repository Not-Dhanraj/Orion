//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'series_statistics_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeriesStatisticsResource {
  /// Returns a new [SeriesStatisticsResource] instance.
  SeriesStatisticsResource({

     this.seasonCount,

     this.episodeFileCount,

     this.episodeCount,

     this.totalEpisodeCount,

     this.sizeOnDisk,

     this.releaseGroups,

     this.percentOfEpisodes,
  });

  @JsonKey(
    
    name: r'seasonCount',
    required: false,
    includeIfNull: false,
  )


  final int? seasonCount;



  @JsonKey(
    
    name: r'episodeFileCount',
    required: false,
    includeIfNull: false,
  )


  final int? episodeFileCount;



  @JsonKey(
    
    name: r'episodeCount',
    required: false,
    includeIfNull: false,
  )


  final int? episodeCount;



  @JsonKey(
    
    name: r'totalEpisodeCount',
    required: false,
    includeIfNull: false,
  )


  final int? totalEpisodeCount;



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



  @JsonKey(
    
    name: r'percentOfEpisodes',
    required: false,
    includeIfNull: false,
  )


  final double? percentOfEpisodes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeriesStatisticsResource &&
      other.seasonCount == seasonCount &&
      other.episodeFileCount == episodeFileCount &&
      other.episodeCount == episodeCount &&
      other.totalEpisodeCount == totalEpisodeCount &&
      other.sizeOnDisk == sizeOnDisk &&
      other.releaseGroups == releaseGroups &&
      other.percentOfEpisodes == percentOfEpisodes;

    @override
    int get hashCode =>
        seasonCount.hashCode +
        episodeFileCount.hashCode +
        episodeCount.hashCode +
        totalEpisodeCount.hashCode +
        sizeOnDisk.hashCode +
        (releaseGroups == null ? 0 : releaseGroups.hashCode) +
        percentOfEpisodes.hashCode;

  factory SeriesStatisticsResource.fromJson(Map<String, dynamic> json) => _$SeriesStatisticsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeriesStatisticsResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

