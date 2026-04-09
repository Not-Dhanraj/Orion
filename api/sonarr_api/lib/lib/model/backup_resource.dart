//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/backup_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'backup_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupResource {
  /// Returns a new [BackupResource] instance.
  BackupResource({

     this.id,

     this.name,

     this.path,

     this.type,

     this.size,

     this.time,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final BackupType? type;



  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
  )


  final int? size;



  @JsonKey(
    
    name: r'time',
    required: false,
    includeIfNull: false,
  )


  final DateTime? time;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BackupResource &&
      other.id == id &&
      other.name == name &&
      other.path == path &&
      other.type == type &&
      other.size == size &&
      other.time == time;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (path == null ? 0 : path.hashCode) +
        type.hashCode +
        size.hashCode +
        time.hashCode;

  factory BackupResource.fromJson(Map<String, dynamic> json) => _$BackupResourceFromJson(json);

  Map<String, dynamic> toJson() => _$BackupResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

