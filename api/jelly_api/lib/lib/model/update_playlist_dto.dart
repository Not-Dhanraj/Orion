//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/playlist_user_permissions.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_playlist_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdatePlaylistDto {
  /// Returns a new [UpdatePlaylistDto] instance.
  UpdatePlaylistDto({

     this.name,

     this.ids,

     this.users,

     this.isPublic,
  });

      /// Gets or sets the name of the new playlist.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets item ids of the playlist.
  @JsonKey(
    
    name: r'Ids',
    required: false,
    includeIfNull: false,
  )


  final List<String>? ids;



      /// Gets or sets the playlist users.
  @JsonKey(
    
    name: r'Users',
    required: false,
    includeIfNull: false,
  )


  final List<PlaylistUserPermissions>? users;



      /// Gets or sets a value indicating whether the playlist is public.
  @JsonKey(
    
    name: r'IsPublic',
    required: false,
    includeIfNull: false,
  )


  final bool? isPublic;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdatePlaylistDto &&
      other.name == name &&
      other.ids == ids &&
      other.users == users &&
      other.isPublic == isPublic;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (ids == null ? 0 : ids.hashCode) +
        (users == null ? 0 : users.hashCode) +
        (isPublic == null ? 0 : isPublic.hashCode);

  factory UpdatePlaylistDto.fromJson(Map<String, dynamic> json) => _$UpdatePlaylistDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePlaylistDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

