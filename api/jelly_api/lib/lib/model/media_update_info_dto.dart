//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/media_update_info_path_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_update_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaUpdateInfoDto {
  /// Returns a new [MediaUpdateInfoDto] instance.
  MediaUpdateInfoDto({

     this.updates,
  });

      /// Gets or sets the list of updates.
  @JsonKey(
    
    name: r'Updates',
    required: false,
    includeIfNull: false,
  )


  final List<MediaUpdateInfoPathDto>? updates;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MediaUpdateInfoDto &&
      other.updates == updates;

    @override
    int get hashCode =>
        updates.hashCode;

  factory MediaUpdateInfoDto.fromJson(Map<String, dynamic> json) => _$MediaUpdateInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MediaUpdateInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

