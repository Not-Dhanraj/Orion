//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'startup_configuration_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StartupConfigurationDto {
  /// Returns a new [StartupConfigurationDto] instance.
  StartupConfigurationDto({

     this.serverName,

     this.uICulture,

     this.metadataCountryCode,

     this.preferredMetadataLanguage,
  });

      /// Gets or sets the server name.
  @JsonKey(
    
    name: r'ServerName',
    required: false,
    includeIfNull: false,
  )


  final String? serverName;



      /// Gets or sets UI language culture.
  @JsonKey(
    
    name: r'UICulture',
    required: false,
    includeIfNull: false,
  )


  final String? uICulture;



      /// Gets or sets the metadata country code.
  @JsonKey(
    
    name: r'MetadataCountryCode',
    required: false,
    includeIfNull: false,
  )


  final String? metadataCountryCode;



      /// Gets or sets the preferred language for the metadata.
  @JsonKey(
    
    name: r'PreferredMetadataLanguage',
    required: false,
    includeIfNull: false,
  )


  final String? preferredMetadataLanguage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StartupConfigurationDto &&
      other.serverName == serverName &&
      other.uICulture == uICulture &&
      other.metadataCountryCode == metadataCountryCode &&
      other.preferredMetadataLanguage == preferredMetadataLanguage;

    @override
    int get hashCode =>
        (serverName == null ? 0 : serverName.hashCode) +
        (uICulture == null ? 0 : uICulture.hashCode) +
        (metadataCountryCode == null ? 0 : metadataCountryCode.hashCode) +
        (preferredMetadataLanguage == null ? 0 : preferredMetadataLanguage.hashCode);

  factory StartupConfigurationDto.fromJson(Map<String, dynamic> json) => _$StartupConfigurationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StartupConfigurationDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

