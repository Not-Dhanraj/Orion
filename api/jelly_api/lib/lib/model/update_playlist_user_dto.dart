//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_playlist_user_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdatePlaylistUserDto {
  /// Returns a new [UpdatePlaylistUserDto] instance.
  UpdatePlaylistUserDto({

     this.canEdit,
  });

      /// Gets or sets a value indicating whether the user can edit the playlist.
  @JsonKey(
    
    name: r'CanEdit',
    required: false,
    includeIfNull: false,
  )


  final bool? canEdit;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdatePlaylistUserDto &&
      other.canEdit == canEdit;

    @override
    int get hashCode =>
        (canEdit == null ? 0 : canEdit.hashCode);

  factory UpdatePlaylistUserDto.fromJson(Map<String, dynamic> json) => _$UpdatePlaylistUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePlaylistUserDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

