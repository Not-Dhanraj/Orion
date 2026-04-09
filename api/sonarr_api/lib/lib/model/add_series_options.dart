//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/monitor_types.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_series_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddSeriesOptions {
  /// Returns a new [AddSeriesOptions] instance.
  AddSeriesOptions({

     this.ignoreEpisodesWithFiles,

     this.ignoreEpisodesWithoutFiles,

     this.monitor,

     this.searchForMissingEpisodes,

     this.searchForCutoffUnmetEpisodes,
  });

  @JsonKey(
    
    name: r'ignoreEpisodesWithFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreEpisodesWithFiles;



  @JsonKey(
    
    name: r'ignoreEpisodesWithoutFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreEpisodesWithoutFiles;



  @JsonKey(
    
    name: r'monitor',
    required: false,
    includeIfNull: false,
  )


  final MonitorTypes? monitor;



  @JsonKey(
    
    name: r'searchForMissingEpisodes',
    required: false,
    includeIfNull: false,
  )


  final bool? searchForMissingEpisodes;



  @JsonKey(
    
    name: r'searchForCutoffUnmetEpisodes',
    required: false,
    includeIfNull: false,
  )


  final bool? searchForCutoffUnmetEpisodes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddSeriesOptions &&
      other.ignoreEpisodesWithFiles == ignoreEpisodesWithFiles &&
      other.ignoreEpisodesWithoutFiles == ignoreEpisodesWithoutFiles &&
      other.monitor == monitor &&
      other.searchForMissingEpisodes == searchForMissingEpisodes &&
      other.searchForCutoffUnmetEpisodes == searchForCutoffUnmetEpisodes;

    @override
    int get hashCode =>
        ignoreEpisodesWithFiles.hashCode +
        ignoreEpisodesWithoutFiles.hashCode +
        monitor.hashCode +
        searchForMissingEpisodes.hashCode +
        searchForCutoffUnmetEpisodes.hashCode;

  factory AddSeriesOptions.fromJson(Map<String, dynamic> json) => _$AddSeriesOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$AddSeriesOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

