//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_path_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_path_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaPathDto {
  /// Returns a new [MediaPathDto] instance.
  MediaPathDto({

    required  this.name,

     this.path,

     this.pathInfo,
  });

      /// Gets or sets the name of the library.
  @JsonKey(
    
    name: r'Name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Gets or sets the path to add.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets or sets the path info.
  @JsonKey(
    
    name: r'PathInfo',
    required: false,
    includeIfNull: false,
  )


  final MediaPathInfo? pathInfo;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaPathDto &&
      other.name == name &&
      other.path == path &&
      other.pathInfo == pathInfo;

    @override
    int get hashCode =>
        name.hashCode +
        (path == null ? 0 : path.hashCode) +
        (pathInfo == null ? 0 : pathInfo.hashCode);

  factory MediaPathDto.fromJson(Map<String, dynamic> json) => _$MediaPathDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaPathDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

