//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/live_tv_service_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_tv_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LiveTvInfo {
  /// Returns a new [LiveTvInfo] instance.
  LiveTvInfo({

     this.services,

     this.isEnabled,

     this.enabledUsers,
  });

      /// Gets or sets the services.
  @JsonKey(
    
    name: r'Services',
    required: false,
    includeIfNull: false,
  )


  final List<LiveTvServiceInfo>? services;



      /// Gets or sets a value indicating whether this instance is enabled.
  @JsonKey(
    
    name: r'IsEnabled',
    required: false,
    includeIfNull: false,
  )


  final bool? isEnabled;



      /// Gets or sets the enabled users.
  @JsonKey(
    
    name: r'EnabledUsers',
    required: false,
    includeIfNull: false,
  )


  final List<String>? enabledUsers;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LiveTvInfo &&
      other.services == services &&
      other.isEnabled == isEnabled &&
      other.enabledUsers == enabledUsers;

    @override
    int get hashCode =>
        services.hashCode +
        isEnabled.hashCode +
        enabledUsers.hashCode;

  factory LiveTvInfo.fromJson(Map<String, dynamic> json) => _$LiveTvInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LiveTvInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

