//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/monitoring_options.dart';
import 'package:sonarr_api/lib/model/season_pass_series_resource.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'season_pass_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SeasonPassResource {
  /// Returns a new [SeasonPassResource] instance.
  SeasonPassResource({

     this.series,

     this.monitoringOptions,
  });

  @JsonKey(
    
    name: r'series',
    required: false,
    includeIfNull: false,
  )


  final List<SeasonPassSeriesResource>? series;



  @JsonKey(
    
    name: r'monitoringOptions',
    required: false,
    includeIfNull: false,
  )


  final MonitoringOptions? monitoringOptions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SeasonPassResource &&
      other.series == series &&
      other.monitoringOptions == monitoringOptions;

    @override
    int get hashCode =>
        (series == null ? 0 : series.hashCode) +
        monitoringOptions.hashCode;

  factory SeasonPassResource.fromJson(Map<String, dynamic> json) => _$SeasonPassResourceFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonPassResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

