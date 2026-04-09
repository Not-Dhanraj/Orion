//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/monitor_types.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'monitoring_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MonitoringOptions {
  /// Returns a new [MonitoringOptions] instance.
  MonitoringOptions({

     this.ignoreEpisodesWithFiles,

     this.ignoreEpisodesWithoutFiles,

     this.monitor,
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is MonitoringOptions &&
      other.ignoreEpisodesWithFiles == ignoreEpisodesWithFiles &&
      other.ignoreEpisodesWithoutFiles == ignoreEpisodesWithoutFiles &&
      other.monitor == monitor;

    @override
    int get hashCode =>
        ignoreEpisodesWithFiles.hashCode +
        ignoreEpisodesWithoutFiles.hashCode +
        monitor.hashCode;

  factory MonitoringOptions.fromJson(Map<String, dynamic> json) => _$MonitoringOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$MonitoringOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

