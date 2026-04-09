//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'unmapped_folder.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UnmappedFolder {
  /// Returns a new [UnmappedFolder] instance.
  UnmappedFolder({

     this.name,

     this.path,

     this.relativePath,
  });

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
    
    name: r'relativePath',
    required: false,
    includeIfNull: false,
  )


  final String? relativePath;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UnmappedFolder &&
      other.name == name &&
      other.path == path &&
      other.relativePath == relativePath;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (path == null ? 0 : path.hashCode) +
        (relativePath == null ? 0 : relativePath.hashCode);

  factory UnmappedFolder.fromJson(Map<String, dynamic> json) => _$UnmappedFolderFromJson(json);

  Map<String, dynamic> toJson() => _$UnmappedFolderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

