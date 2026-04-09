//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'season_statistics_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeasonStatisticsResource {
  /// Returns a new [SeasonStatisticsResource] instance.
  SeasonStatisticsResource({

     this.nextAiring,

     this.previousAiring,

     this.episodeFileCount,

     this.episodeCount,

     this.totalEpisodeCount,

     this.sizeOnDisk,

     this.releaseGroups,

     this.percentOfEpisodes,
  });

  @JsonKey(
    
    name: r'nextAiring',
    required: false,
    includeIfNull: false,
  )


  final DateTime? nextAiring;



  @JsonKey(
    
    name: r'previousAiring',
    required: false,
    includeIfNull: false,
  )


  final DateTime? previousAiring;



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
    bool operator ==(Object other) => identical(this, other) || other is SeasonStatisticsResource &&
      other.nextAiring == nextAiring &&
      other.previousAiring == previousAiring &&
      other.episodeFileCount == episodeFileCount &&
      other.episodeCount == episodeCount &&
      other.totalEpisodeCount == totalEpisodeCount &&
      other.sizeOnDisk == sizeOnDisk &&
      other.releaseGroups == releaseGroups &&
      other.percentOfEpisodes == percentOfEpisodes;

    @override
    int get hashCode =>
        (nextAiring == null ? 0 : nextAiring.hashCode) +
        (previousAiring == null ? 0 : previousAiring.hashCode) +
        episodeFileCount.hashCode +
        episodeCount.hashCode +
        totalEpisodeCount.hashCode +
        sizeOnDisk.hashCode +
        (releaseGroups == null ? 0 : releaseGroups.hashCode) +
        percentOfEpisodes.hashCode;

  factory SeasonStatisticsResource.fromJson(Map<String, dynamic> json) => _$SeasonStatisticsResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonStatisticsResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

