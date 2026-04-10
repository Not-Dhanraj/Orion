//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/file_system_entry_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file_system_entry_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FileSystemEntryInfo {
  /// Returns a new [FileSystemEntryInfo] instance.
  FileSystemEntryInfo({

     this.name,

     this.path,

     this.type,
  });

      /// Gets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets the path.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets the type.
  @JsonKey(
    
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final FileSystemEntryType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is FileSystemEntryInfo &&
      other.name == name &&
      other.path == path &&
      other.type == type;

    @override
    int get hashCode =>
        name.hashCode +
        path.hashCode +
        type.hashCode;

  factory FileSystemEntryInfo.fromJson(Map<String, dynamic> json) => _$FileSystemEntryInfoFromJson(json);

  Map<String, dynamic> toJson() => _$FileSystemEntryInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

