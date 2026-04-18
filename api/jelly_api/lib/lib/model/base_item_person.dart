//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/person_kind.dart';
import 'package:jelly_api/lib/model/base_item_person_image_blur_hashes.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_item_person.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BaseItemPerson {
  /// Returns a new [BaseItemPerson] instance.
  BaseItemPerson({

     this.name,

     this.id,

     this.role,

     this.type = PersonKind.unknown,

     this.primaryImageTag,

     this.imageBlurHashes,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the identifier.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets the role.
  @JsonKey(
    
    name: r'Role',
    required: false,
    includeIfNull: false,
  )


  final String? role;



      /// Gets or sets the type.
  @JsonKey(
    defaultValue: PersonKind.unknown,
    name: r'Type',
    required: false,
    includeIfNull: false,
  )


  final PersonKind? type;



      /// Gets or sets the primary image tag.
  @JsonKey(
    
    name: r'PrimaryImageTag',
    required: false,
    includeIfNull: false,
  )


  final String? primaryImageTag;



  @JsonKey(
    
    name: r'ImageBlurHashes',
    required: false,
    includeIfNull: false,
  )


  final BaseItemPersonImageBlurHashes? imageBlurHashes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BaseItemPerson &&
      other.name == name &&
      other.id == id &&
      other.role == role &&
      other.type == type &&
      other.primaryImageTag == primaryImageTag &&
      other.imageBlurHashes == imageBlurHashes;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        id.hashCode +
        (role == null ? 0 : role.hashCode) +
        type.hashCode +
        (primaryImageTag == null ? 0 : primaryImageTag.hashCode) +
        (imageBlurHashes == null ? 0 : imageBlurHashes.hashCode);

  factory BaseItemPerson.fromJson(Map<String, dynamic> json) => _$BaseItemPersonFromJson(json);

  Map<String, dynamic> toJson() => _$BaseItemPersonToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

