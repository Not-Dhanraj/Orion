//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/general_command_type.dart';
import 'package:jelly_api/lib/model/media_type.dart';
import 'package:jelly_api/lib/model/device_profile.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_capabilities_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientCapabilitiesDto {
  /// Returns a new [ClientCapabilitiesDto] instance.
  ClientCapabilitiesDto({

     this.playableMediaTypes,

     this.supportedCommands,

     this.supportsMediaControl,

     this.supportsPersistentIdentifier,

     this.deviceProfile,

     this.appStoreUrl,

     this.iconUrl,
  });

      /// Gets or sets the list of playable media types.
  @JsonKey(
    
    name: r'PlayableMediaTypes',
    required: false,
    includeIfNull: false,
  )


  final List<MediaType>? playableMediaTypes;



      /// Gets or sets the list of supported commands.
  @JsonKey(
    
    name: r'SupportedCommands',
    required: false,
    includeIfNull: false,
  )


  final List<GeneralCommandType>? supportedCommands;



      /// Gets or sets a value indicating whether session supports media control.
  @JsonKey(
    
    name: r'SupportsMediaControl',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsMediaControl;



      /// Gets or sets a value indicating whether session supports a persistent identifier.
  @JsonKey(
    
    name: r'SupportsPersistentIdentifier',
    required: false,
    includeIfNull: false,
  )


  final bool? supportsPersistentIdentifier;



      /// Gets or sets the device profile.
  @JsonKey(
    
    name: r'DeviceProfile',
    required: false,
    includeIfNull: false,
  )


  final DeviceProfile? deviceProfile;



      /// Gets or sets the app store url.
  @JsonKey(
    
    name: r'AppStoreUrl',
    required: false,
    includeIfNull: false,
  )


  final String? appStoreUrl;



      /// Gets or sets the icon url.
  @JsonKey(
    
    name: r'IconUrl',
    required: false,
    includeIfNull: false,
  )


  final String? iconUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ClientCapabilitiesDto &&
      other.playableMediaTypes == playableMediaTypes &&
      other.supportedCommands == supportedCommands &&
      other.supportsMediaControl == supportsMediaControl &&
      other.supportsPersistentIdentifier == supportsPersistentIdentifier &&
      other.deviceProfile == deviceProfile &&
      other.appStoreUrl == appStoreUrl &&
      other.iconUrl == iconUrl;

    @override
    int get hashCode =>
        playableMediaTypes.hashCode +
        supportedCommands.hashCode +
        supportsMediaControl.hashCode +
        supportsPersistentIdentifier.hashCode +
        (deviceProfile == null ? 0 : deviceProfile.hashCode) +
        (appStoreUrl == null ? 0 : appStoreUrl.hashCode) +
        (iconUrl == null ? 0 : iconUrl.hashCode);

  factory ClientCapabilitiesDto.fromJson(Map<String, dynamic> json) => _$ClientCapabilitiesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ClientCapabilitiesDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

