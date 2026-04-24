//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_update_info_path_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaUpdateInfoPathDto {
  /// Returns a new [MediaUpdateInfoPathDto] instance.
  MediaUpdateInfoPathDto({

     this.path,

     this.updateType,
  });

      /// Gets or sets media path.
  @JsonKey(
    
    name: r'Path',
    required: false,
    includeIfNull: false,
  )


  final String? path;



      /// Gets or sets media update type.  Created, Modified, Deleted.
  @JsonKey(
    
    name: r'UpdateType',
    required: false,
    includeIfNull: false,
  )


  final String? updateType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaUpdateInfoPathDto &&
      other.path == path &&
      other.updateType == updateType;

    @override
    int get hashCode =>
        (path == null ? 0 : path.hashCode) +
        (updateType == null ? 0 : updateType.hashCode);

  factory MediaUpdateInfoPathDto.fromJson(Map<String, dynamic> json) => _$MediaUpdateInfoPathDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaUpdateInfoPathDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

