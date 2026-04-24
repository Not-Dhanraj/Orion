//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/playlist_user_permissions.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playlist_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PlaylistDto {
  /// Returns a new [PlaylistDto] instance.
  PlaylistDto({

     this.openAccess,

     this.shares,

     this.itemIds,
  });

      /// Gets or sets a value indicating whether the playlist is publicly readable.
  @JsonKey(
    
    name: r'OpenAccess',
    required: false,
    includeIfNull: false,
  )


  final bool? openAccess;



      /// Gets or sets the share permissions.
  @JsonKey(
    
    name: r'Shares',
    required: false,
    includeIfNull: false,
  )


  final List<PlaylistUserPermissions>? shares;



      /// Gets or sets the item ids.
  @JsonKey(
    
    name: r'ItemIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? itemIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PlaylistDto &&
      other.openAccess == openAccess &&
      other.shares == shares &&
      other.itemIds == itemIds;

    @override
    int get hashCode =>
        openAccess.hashCode +
        shares.hashCode +
        itemIds.hashCode;

  factory PlaylistDto.fromJson(Map<String, dynamic> json) => _$PlaylistDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

