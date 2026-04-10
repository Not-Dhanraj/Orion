//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/backup_options_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'backup_manifest_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupManifestDto {
  /// Returns a new [BackupManifestDto] instance.
  BackupManifestDto({

     this.serverVersion,

     this.backupEngineVersion,

     this.dateCreated,

     this.path,

     this.options,
  });

      /// Gets or sets the jellyfin version this backup was created with.
  @JsonKey(
    
    name: r'ServerVersion',
    required: false,
    includeIfNull: false,
  )


  final String? serverVersion;



      /// Gets or sets the backup engine version this backup was created with.
  @JsonKey(
    
    name: r'BackupEngineVersion',
    required: false,
    includeIfNull: false,
  )


  final String? backupEngineVersion;



      /// Gets or sets the date this backup was created with.
  @JsonKey(
    
    name: r'DateCreated',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateCreated;



      /// Gets or sets the path to the backup on the system.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets or sets the contents of the backup archive.
  @JsonKey(
    
    name: r'Options',
    required: false,
    includeIfNull: false,
  )


  final BackupOptionsDto? options;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BackupManifestDto &&
      other.serverVersion == serverVersion &&
      other.backupEngineVersion == backupEngineVersion &&
      other.dateCreated == dateCreated &&
      other.path == path &&
      other.options == options;

    @override
    int get hashCode =>
        serverVersion.hashCode +
        backupEngineVersion.hashCode +
        dateCreated.hashCode +
        path.hashCode +
        options.hashCode;

  factory BackupManifestDto.fromJson(Map<String, dynamic> json) => _$BackupManifestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BackupManifestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

