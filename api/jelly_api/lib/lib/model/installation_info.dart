//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/package_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'installation_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InstallationInfo {
  /// Returns a new [InstallationInfo] instance.
  InstallationInfo({

     this.guid,

     this.name,

     this.version,

     this.changelog,

     this.sourceUrl,

     this.checksum,

     this.packageInfo,
  });

      /// Gets or sets the Id.
  @JsonKey(
    
    name: r'Guid',
    required: false,
    includeIfNull: false,
  )


  final String? guid;



      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the version.
  @JsonKey(
    
    name: r'Version',
    required: false,
    includeIfNull: false,
  )


  final String? version;



      /// Gets or sets the changelog for this version.
  @JsonKey(
    
    name: r'Changelog',
    required: false,
    includeIfNull: false,
  )


  final String? changelog;



      /// Gets or sets the source URL.
  @JsonKey(
    
    name: r'SourceUrl',
    required: false,
    includeIfNull: false,
  )


  final String? sourceUrl;



      /// Gets or sets a checksum for the binary.
  @JsonKey(
    
    name: r'Checksum',
    required: false,
    includeIfNull: false,
  )


  final String? checksum;



      /// Gets or sets package information for the installation.
  @JsonKey(
    
    name: r'PackageInfo',
    required: false,
    includeIfNull: false,
  )


  final PackageInfo? packageInfo;





    @override
    bool operator ==(Object other) => identical(this, other) || other is InstallationInfo &&
      other.guid == guid &&
      other.name == name &&
      other.version == version &&
      other.changelog == changelog &&
      other.sourceUrl == sourceUrl &&
      other.checksum == checksum &&
      other.packageInfo == packageInfo;

    @override
    int get hashCode =>
        guid.hashCode +
        (name == null ? 0 : name.hashCode) +
        (version == null ? 0 : version.hashCode) +
        (changelog == null ? 0 : changelog.hashCode) +
        (sourceUrl == null ? 0 : sourceUrl.hashCode) +
        (checksum == null ? 0 : checksum.hashCode) +
        (packageInfo == null ? 0 : packageInfo.hashCode);

  factory InstallationInfo.fromJson(Map<String, dynamic> json) => _$InstallationInfoFromJson(json);

  Map<String, dynamic> toJson() => _$InstallationInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

