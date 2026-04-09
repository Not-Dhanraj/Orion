//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episodes_monitored_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EpisodesMonitoredResource {
  /// Returns a new [EpisodesMonitoredResource] instance.
  EpisodesMonitoredResource({

     this.episodeIds,

     this.monitored,
  });

  @JsonKey(
    
    name: r'episodeIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? episodeIds;



  @JsonKey(
    
    name: r'monitored',
    required: false,
    includeIfNull: false,
  )


  final bool? monitored;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EpisodesMonitoredResource &&
      other.episodeIds == episodeIds &&
      other.monitored == monitored;

    @override
    int get hashCode =>
        (episodeIds == null ? 0 : episodeIds.hashCode) +
        monitored.hashCode;

  factory EpisodesMonitoredResource.fromJson(Map<String, dynamic> json) => _$EpisodesMonitoredResourceFromJson(json);

  Map<String, dynamic> toJson() => _$EpisodesMonitoredResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

