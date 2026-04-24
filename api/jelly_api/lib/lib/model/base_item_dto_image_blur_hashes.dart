//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_item_dto_image_blur_hashes.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BaseItemDtoImageBlurHashes {
  /// Returns a new [BaseItemDtoImageBlurHashes] instance.
  BaseItemDtoImageBlurHashes({

     this.primary,

     this.art,

     this.backdrop,

     this.banner,

     this.logo,

     this.thumb,

     this.disc,

     this.box,

     this.screenshot,

     this.menu,

     this.chapter,

     this.boxRear,

     this.profile,
  });

  @JsonKey(
    
    name: r'Primary',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? primary;



  @JsonKey(
    
    name: r'Art',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? art;



  @JsonKey(
    
    name: r'Backdrop',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? backdrop;



  @JsonKey(
    
    name: r'Banner',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? banner;



  @JsonKey(
    
    name: r'Logo',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? logo;



  @JsonKey(
    
    name: r'Thumb',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? thumb;



  @JsonKey(
    
    name: r'Disc',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? disc;



  @JsonKey(
    
    name: r'Box',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? box;



  @JsonKey(
    
    name: r'Screenshot',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? screenshot;



  @JsonKey(
    
    name: r'Menu',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? menu;



  @JsonKey(
    
    name: r'Chapter',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? chapter;



  @JsonKey(
    
    name: r'BoxRear',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? boxRear;



  @JsonKey(
    
    name: r'Profile',
    required: false,
    includeIfNull: false,
  )


  final Map<String, String>? profile;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BaseItemDtoImageBlurHashes &&
      other.primary == primary &&
      other.art == art &&
      other.backdrop == backdrop &&
      other.banner == banner &&
      other.logo == logo &&
      other.thumb == thumb &&
      other.disc == disc &&
      other.box == box &&
      other.screenshot == screenshot &&
      other.menu == menu &&
      other.chapter == chapter &&
      other.boxRear == boxRear &&
      other.profile == profile;

    @override
    int get hashCode =>
        primary.hashCode +
        art.hashCode +
        backdrop.hashCode +
        banner.hashCode +
        logo.hashCode +
        thumb.hashCode +
        disc.hashCode +
        box.hashCode +
        screenshot.hashCode +
        menu.hashCode +
        chapter.hashCode +
        boxRear.hashCode +
        profile.hashCode;

  factory BaseItemDtoImageBlurHashes.fromJson(Map<String, dynamic> json) => _$BaseItemDtoImageBlurHashesFromJson(json);

  Map<String, dynamic> toJson() => _$BaseItemDtoImageBlurHashesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

