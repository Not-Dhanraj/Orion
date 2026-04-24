//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_path_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_media_path_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateMediaPathRequestDto {
  /// Returns a new [UpdateMediaPathRequestDto] instance.
  UpdateMediaPathRequestDto({

    required  this.name,

    required  this.pathInfo,
  });

      /// Gets or sets the library name.
  @JsonKey(
    
    name: r'Name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Gets or sets library folder path information.
  @JsonKey(
    
    name: r'PathInfo',
    required: true,
    includeIfNull: false,
  )


  final MediaPathInfo pathInfo;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateMediaPathRequestDto &&
      other.name == name &&
      other.pathInfo == pathInfo;

    @override
    int get hashCode =>
        name.hashCode +
        pathInfo.hashCode;

  factory UpdateMediaPathRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateMediaPathRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateMediaPathRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

