//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_path_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaPathInfo {
  /// Returns a new [MediaPathInfo] instance.
  MediaPathInfo({

     this.path,
  });

  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaPathInfo &&
      other.path == path;

    @override
    int get hashCode =>
        path.hashCode;

  factory MediaPathInfo.fromJson(Map<String, dynamic> json) => _$MediaPathInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaPathInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

