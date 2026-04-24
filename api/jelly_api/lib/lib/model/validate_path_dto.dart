//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'validate_path_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ValidatePathDto {
  /// Returns a new [ValidatePathDto] instance.
  ValidatePathDto({

     this.validateWritable,

     this.path,

     this.isFile,
  });

      /// Gets or sets a value indicating whether validate if path is writable.
  @JsonKey(
    
    name: r'ValidateWritable',
    required: false,
    includeIfNull: false,
  )


  final bool? validateWritable;



      /// Gets or sets the path.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets or sets is path file.
  @JsonKey(
    
    name: r'IsFile',
    required: false,
    includeIfNull: false,
  )


  final bool? isFile;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ValidatePathDto &&
      other.validateWritable == validateWritable &&
      other.path == path &&
      other.isFile == isFile;

    @override
    int get hashCode =>
        validateWritable.hashCode +
        (path == null ? 0 : path.hashCode) +
        (isFile == null ? 0 : isFile.hashCode);

  factory ValidatePathDto.fromJson(Map<String, dynamic> json) => _$ValidatePathDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ValidatePathDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

