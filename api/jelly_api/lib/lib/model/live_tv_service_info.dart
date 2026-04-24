//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/live_tv_service_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'live_tv_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LiveTvServiceInfo {
  /// Returns a new [LiveTvServiceInfo] instance.
  LiveTvServiceInfo({

     this.name,

     this.homePageUrl,

     this.status,

     this.statusMessage,

     this.version,

     this.hasUpdateAvailable,

     this.isVisible,

     this.tuners,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the home page URL.
  @JsonKey(
    
    name: r'HomePageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? homePageUrl;



      /// Gets or sets the status.
  @JsonKey(
    
    name: r'Status',
    required: false,
    includeIfNull: false,
  )


  final LiveTvServiceStatus? status;



      /// Gets or sets the status message.
  @JsonKey(
    
    name: r'StatusMessage',
    required: false,
    includeIfNull: false,
  )


  final String? statusMessage;



      /// Gets or sets the version.
  @JsonKey(
    
    name: r'Version',
    required: false,
    includeIfNull: false,
  )


  final String? version;



      /// Gets or sets a value indicating whether this instance has update available.
  @JsonKey(
    
    name: r'HasUpdateAvailable',
    required: false,
    includeIfNull: false,
  )


  final bool? hasUpdateAvailable;



      /// Gets or sets a value indicating whether this instance is visible.
  @JsonKey(
    
    name: r'IsVisible',
    required: false,
    includeIfNull: false,
  )


  final bool? isVisible;



  @JsonKey(
    
    name: r'Tuners',
    required: false,
    includeIfNull: false,
  )


  final List<String>? tuners;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LiveTvServiceInfo &&
      other.name == name &&
      other.homePageUrl == homePageUrl &&
      other.status == status &&
      other.statusMessage == statusMessage &&
      other.version == version &&
      other.hasUpdateAvailable == hasUpdateAvailable &&
      other.isVisible == isVisible &&
      other.tuners == tuners;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (homePageUrl == null ? 0 : homePageUrl.hashCode) +
        status.hashCode +
        (statusMessage == null ? 0 : statusMessage.hashCode) +
        (version == null ? 0 : version.hashCode) +
        hasUpdateAvailable.hashCode +
        isVisible.hashCode +
        (tuners == null ? 0 : tuners.hashCode);

  factory LiveTvServiceInfo.fromJson(Map<String, dynamic> json) => _$LiveTvServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LiveTvServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

