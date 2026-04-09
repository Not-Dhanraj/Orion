//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/season_resource.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'season_pass_series_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeasonPassSeriesResource {
  /// Returns a new [SeasonPassSeriesResource] instance.
  SeasonPassSeriesResource({

     this.id,

     this.monitored,

     this.seasons,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;



  @JsonKey(
    
    name: r'seasons',
    required: false,
    includeIfNull: false,
  )


  final List<SeasonResource>? seasons;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeasonPassSeriesResource &&
      other.id == id &&
      other.monitored == monitored &&
      other.seasons == seasons;

    @override
    int get hashCode =>
        id.hashCode +
        (monitored == null ? 0 : monitored.hashCode) +
        (seasons == null ? 0 : seasons.hashCode);

  factory SeasonPassSeriesResource.fromJson(Map<String, dynamic> json) => _$SeasonPassSeriesResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonPassSeriesResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

