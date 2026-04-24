//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'default_directory_browser_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DefaultDirectoryBrowserInfoDto {
  /// Returns a new [DefaultDirectoryBrowserInfoDto] instance.
  DefaultDirectoryBrowserInfoDto({

     this.path,
  });

      /// Gets or sets the path.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DefaultDirectoryBrowserInfoDto &&
      other.path == path;

    @override
    int get hashCode =>
        (path == null ? 0 : path.hashCode);

  factory DefaultDirectoryBrowserInfoDto.fromJson(Map<String, dynamic> json) => _$DefaultDirectoryBrowserInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultDirectoryBrowserInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

