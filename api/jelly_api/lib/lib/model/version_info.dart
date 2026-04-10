//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'version_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VersionInfo {
  /// Returns a new [VersionInfo] instance.
  VersionInfo({

     this.version,

     this.versionNumber,

     this.changelog,

     this.targetAbi,

     this.sourceUrl,

     this.checksum,

     this.timestamp,

     this.repositoryName,

     this.repositoryUrl,
  });

      /// Gets or sets the version.
  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false,
  )


  final String? version;



      /// Gets the version as a System.Version.
  @JsonKey(
    
    name: r'VersionNumber',
    required: false,
    includeIfNull: false,
  )


  final String? versionNumber;



      /// Gets or sets the changelog for this version.
  @JsonKey(
    
    name: r'changelog',
    required: false,
    includeIfNull: false,
  )


  final String? changelog;



      /// Gets or sets the ABI that this version was built against.
  @JsonKey(
    
    name: r'targetAbi',
    required: false,
    includeIfNull: false,
  )


  final String? targetAbi;



      /// Gets or sets the source URL.
  @JsonKey(
    
    name: r'sourceUrl',
    required: false,
    includeIfNull: false,
  )


  final String? sourceUrl;



      /// Gets or sets a checksum for the binary.
  @JsonKey(
    
    name: r'checksum',
    required: false,
    includeIfNull: false,
  )


  final String? checksum;



      /// Gets or sets a timestamp of when the binary was built.
  @JsonKey(
    
    name: r'timestamp',
    required: false,
    includeIfNull: false,
  )


  final String? timestamp;



      /// Gets or sets the repository name.
  @JsonKey(
    
    name: r'repositoryName',
    required: false,
    includeIfNull: false,
  )


  final String? repositoryName;



      /// Gets or sets the repository url.
  @JsonKey(
    
    name: r'repositoryUrl',
    required: false,
    includeIfNull: false,
  )


  final String? repositoryUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VersionInfo &&
      other.version == version &&
      other.versionNumber == versionNumber &&
      other.changelog == changelog &&
      other.targetAbi == targetAbi &&
      other.sourceUrl == sourceUrl &&
      other.checksum == checksum &&
      other.timestamp == timestamp &&
      other.repositoryName == repositoryName &&
      other.repositoryUrl == repositoryUrl;

    @override
    int get hashCode =>
        version.hashCode +
        versionNumber.hashCode +
        (changelog == null ? 0 : changelog.hashCode) +
        (targetAbi == null ? 0 : targetAbi.hashCode) +
        (sourceUrl == null ? 0 : sourceUrl.hashCode) +
        (checksum == null ? 0 : checksum.hashCode) +
        (timestamp == null ? 0 : timestamp.hashCode) +
        repositoryName.hashCode +
        repositoryUrl.hashCode;

  factory VersionInfo.fromJson(Map<String, dynamic> json) => _$VersionInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VersionInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

